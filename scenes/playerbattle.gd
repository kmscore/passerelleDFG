extends CharacterBody2D

@export var speed := 100.0
@export var sprint_multiplier := 2.0
@export var sprint_duration := 0.5
@export var sprint_action := "sprint"

# Son joué quand on prend un dégât
@export var damaged_sound: AudioStream

var is_sprinting := false
var sprint_timer := 0.0

func _ready() -> void:
	# Assigne le stream au player
	if damaged_sound and $AudioStreamPlayer:
		$AudioStreamPlayer.stream = damaged_sound

	# Si tu utilises un HealthComponent, connecte-toi à son signal
	if has_node("HealthComponent"):
		$HealthComponent.connect("health_changed", Callable(self, "_on_health_changed"))

func _physics_process(delta: float) -> void:
	var input_vector = Vector2(
		Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left"),
		Input.get_action_strength("ui_down")  - Input.get_action_strength("ui_up")
	).normalized()

	# Démarrage du sprint
	if Input.is_action_just_pressed(sprint_action):
		is_sprinting = true
		sprint_timer = sprint_duration

	# Décompte sprint
	if is_sprinting:
		sprint_timer -= delta
		if sprint_timer <= 0.0:
			is_sprinting = false

	# Calcul de la vitesse
	var current_speed = speed * (sprint_multiplier if is_sprinting else 1.0)
	velocity = input_vector * current_speed
	move_and_slide()

	# Animation
	if Input.is_action_pressed("ui_right"):
		$AnimatedSprite2D.play("right")
	elif Input.is_action_pressed("ui_left"):
		$AnimatedSprite2D.play("left")

# Signal émis quand le HealthComponent change de PV
func _on_health_changed(old_hp: float, new_hp: float) -> void:
	if new_hp < old_hp:
		$AudioStreamPlayer.play()
