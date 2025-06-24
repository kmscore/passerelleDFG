extends Area2D

@export var damage_amount: int = 10
@export var target: Node2D
@export var speed: float = 250.0
@export var move_time: float = 1.0
@export var wait_time: float = 1.0
@export var rotation_speed: float = 10.0
@export var rotation_falloff: float = 5.0
@export var final_rotation_speed: float = 3.0
@export var pullback_distance: float = 30.0
@export var pullback_time: float = 0.5
@export var fade_speed: float = 0.333
@export var slowdown_curve_sharpness: float = 5.0

var velocity: Vector2 = Vector2.ZERO
var moving: bool = false
var timer: Timer

enum RotationMode { NONE, SPIN, REALIGN, PULLBACK }
var rotation_mode = RotationMode.NONE
var spin_total = 0.0
var current_spin_speed: float = 0.0

var pullback_elapsed = 0.0
var move_elapsed = 0.0

var fade_in_done = false
var alpha := 0.0

func _ready():
	connect("area_entered", Callable(self, "_on_area_entered"))

	timer = Timer.new()
	add_child(timer)
	timer.one_shot = true
	timer.timeout.connect(_on_timer_timeout)

	modulate.a = 0.0
	alpha = 0.0
	fade_in_done = false

func _process(delta):
	if not fade_in_done:
		alpha += fade_speed * delta
		if alpha >= 1.0:
			alpha = 1.0
			fade_in_done = true
			_start_cycle()
		modulate.a = alpha
		
		if target:
			var direction = (target.global_position - global_position).normalized()
			var target_angle = direction.angle()
			rotation = lerp_angle(rotation, target_angle, delta * final_rotation_speed)
		return

	if moving:
		move_elapsed += delta
		var t = clamp(move_elapsed / move_time, 0, 1)
		var slowdown_factor = pow(1.0 - t, slowdown_curve_sharpness)
		position += velocity * slowdown_factor * delta
	elif rotation_mode == RotationMode.SPIN:
		var spin_step = current_spin_speed * delta
		rotation += spin_step
		spin_total += abs(spin_step)
		current_spin_speed = max(final_rotation_speed, current_spin_speed - rotation_falloff * delta)
		
		if spin_total >= TAU * 2 and current_spin_speed <= final_rotation_speed + 0.1:
			rotation_mode = RotationMode.REALIGN
	elif rotation_mode == RotationMode.REALIGN:
		if target:
			var direction = (target.global_position - global_position).normalized()
			var target_angle = direction.angle()
			rotation = lerp_angle(rotation, target_angle, delta * final_rotation_speed)
			
			if abs(wrapf(rotation - target_angle, -PI, PI)) < 0.05:
				rotation_mode = RotationMode.PULLBACK
				pullback_elapsed = 0.0
	elif rotation_mode == RotationMode.PULLBACK:
		if target:
			var direction = (target.global_position - global_position).normalized()
			var target_angle = direction.angle()
			rotation = lerp_angle(rotation, target_angle, delta * final_rotation_speed)

			var t = clamp(pullback_elapsed / pullback_time, 0, 1)
			var distance = lerp(pullback_distance, 0.0, t)
			position -= direction * distance * delta
			pullback_elapsed += delta

			if pullback_elapsed >= pullback_time:
				_start_cycle()

func _start_cycle():
	if not target:
		return

	var direction = (target.global_position - global_position).normalized()
	rotation = direction.angle()

	velocity = direction * speed
	move_elapsed = 0.0
	moving = true
	rotation_mode = RotationMode.NONE

	timer.start(move_time)

func _on_timer_timeout():
	if moving:
		velocity = Vector2.ZERO
		moving = false
		rotation_mode = RotationMode.SPIN
		spin_total = 0.0
		current_spin_speed = rotation_speed
	else:
		_start_cycle()

func _on_area_entered(area: Area2D):
	print("Zone touchée :", area.name)
	if area.is_in_group("player_hitbox"):
		var player = area.get_parent()
		var health_component = _get_health_component(player)
		if health_component:
			print("Appel de damage")
			health_component.damage(damage_amount)
		else:
			print("Pas de HealthComponent trouvé")

func _get_health_component(node: Node) -> Node:
	for child in node.get_children():
		if child is IndieBlueprintHealth:
			return child
	return null

func set_lifetime(seconds: float) -> void:
	await get_tree().create_timer(seconds).timeout
	queue_free()
