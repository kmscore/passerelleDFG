extends CharacterBody3D
class_name IndieBlueprintThirdPersonController

@export var movement_mode: MovementMode = MovementMode.Free:
	set(new_mode):
		if movement_mode != new_mode:
			movement_mode = new_mode
			if is_node_ready():
				update_click_mode_state_machine()

@export var inventory_data: InventoryData
@export var animated_sprite: AnimatedSprite3D
@export var smooth_rotation: bool = true
@export var smooth_rotation_lerp_speed: float = 6.0

@export_category("Click movement")
@export var max_click_position_distance: float = 10.0
@export var can_change_click_position_while_moving: bool = true
@export var speed: float = 5.0
@export var sprint_multiplier: float = 1.3
@export var sprint_action: String = "sprint"
@export var gravity: float = 20.0
@export var jump_velocity: float = 8.0

signal toggle_inventory()

@onready var navigation_agent_3d: NavigationAgent3D = $NavigationAgent3D
@onready var camera: CameraShake3D = %Camera3D
@onready var click_mode_state_machine: IndieBlueprintFiniteStateMachine = $ClickModeStateMachine
@onready var actionable_finder: Area3D = $ActionableFinder

enum MovementMode {
	Click,
	Free
}

var last_input_dir: Vector2 = Vector2.DOWN
var last_input_angle: float = 0.0

func _unhandled_input(_event: InputEvent) -> void:
	if Input.is_action_just_pressed("interact"):
		var actionables = actionable_finder.get_overlapping_areas()
		if actionables.size() > 0:
			actionables[0].action()
			return
	
	if Input.is_action_just_pressed("ui_cancel"):
		IndieBlueprintCursorManager.switch_mouse_capture_mode()
	elif Input.is_action_just_pressed("inventory"):
		toggle_inventory.emit()

func _ready() -> void:
	Input.mouse_mode = Input.MOUSE_MODE_CAPTURED
	update_click_mode_state_machine()
	click_mode_state_machine.register_transition(
		ThirdPersonClickModeNeutralStateToThirdPersonClickModeMovementStateTransition.new()
	)

func _process(_delta: float) -> void:
	_update_animation()

func _update_animation() -> void:
	var input_vector = Vector2(
		Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left"),
		Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	)
	var is_sprinting = Input.is_action_pressed(sprint_action)

	# Ajuste vitesse et échelle animation
	if is_sprinting:
		speed = 5.0 * sprint_multiplier
		animated_sprite.speed_scale = sprint_multiplier
	else:
		speed = 5.0
		animated_sprite.speed_scale = 1.0

	var yaw = camera.global_transform.basis.get_euler().y
	var yaw_deg = fposmod(rad_to_deg(yaw), 360.0)

	if input_vector == Vector2.ZERO:
		# Idle basé sur dernier input et rotation courante, zones de 90° autour de last_input_angle
		for dir_data in [["front", 180.0], ["left", 270.0], ["back", 0.0], ["right", 90.0]]:
			var name_str = dir_data[0]
			var offset = dir_data[1]
			var center = fposmod(last_input_angle + offset, 360.0)
			var diff = fposmod(yaw_deg - center + 180.0, 360.0) - 180.0
			if abs(diff) <= 45.0:
				animated_sprite.play("idle_%s" % name_str)
				return
		# Par défaut si aucune zone correspond
		animated_sprite.play("idle_back")
	else:
		# En mouvement: enregistre direction et angle caméra
		last_input_dir = input_vector.normalized()
		last_input_angle = yaw_deg

		# Animation marche
		if abs(last_input_dir.x) > abs(last_input_dir.y):
			# Gauche/droite
			if last_input_dir.x > 0.0:
				animated_sprite.play("walk_right")
			else:
				animated_sprite.play("walk_left")
		else:
			# Avant/arrière
			if last_input_dir.y > 0.0:
				animated_sprite.play("walk_front")
			else:
				animated_sprite.play("walk_back")

		# Rotation vers caméra uniquement en mouvement
		if smooth_rotation:
			rotation.y = lerp_angle(rotation.y, yaw, smooth_rotation_lerp_speed * get_process_delta_time())

func look_at_mouse() -> void:
	var mouse_pos = get_viewport().get_mouse_position()
	var origin = camera.project_ray_origin(mouse_pos)
	var dir = camera.project_ray_normal(mouse_pos)
	if dir.y != 0.0:
		var dist = -origin.y / dir.y
		var target = origin + dir * dist
		look_at(Vector3(target.x, global_position.y, target.z), Vector3.UP)

func _physics_process(_delta: float) -> void:
	var is_sprinting = Input.is_action_pressed(sprint_action)
	if movement_mode == MovementMode.Free:
		var input_vector = Vector2(
			Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left"),
			Input.get_action_strength("ui_up") - Input.get_action_strength("ui_down")
		)
		if input_vector.length() > 0.0:
			input_vector = input_vector.normalized()
			var cam_basis = camera.global_transform.basis
			var forward = -cam_basis.z.normalized()
			var right_dir = cam_basis.x.normalized()
			var dir_vec = (forward * input_vector.y + right_dir * input_vector.x).normalized()
			var curr_speed = speed * (sprint_multiplier if is_sprinting else 1.0)
			velocity.x = dir_vec.x * curr_speed
			velocity.z = dir_vec.z * curr_speed
		else:
			velocity.x = 0.0
			velocity.z = 0.0

		if is_on_floor() and Input.is_action_just_pressed("ui_accept"):
			velocity.y = jump_velocity
		velocity.y -= gravity * _delta
		move_and_slide()

# Support click mode
func can_move_to_next_click_position(pos: Vector3) -> bool:
	return global_position.distance_to(pos) <= max_click_position_distance

func change_movement_mode(new_mode: MovementMode) -> void:
	movement_mode = new_mode

func movement_mode_is_free() -> bool:
	return movement_mode == MovementMode.Free

func movement_mode_is_click() -> bool:
	return movement_mode == MovementMode.Click

func update_click_mode_state_machine() -> void:
	if movement_mode_is_click():
		click_mode_state_machine.unlock_state_machine()
	else:
		click_mode_state_machine.lock_state_machine()
