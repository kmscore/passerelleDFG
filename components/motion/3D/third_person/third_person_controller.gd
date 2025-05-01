class_name IndieBlueprintThirdPersonController extends CharacterBody3D

@export var movement_mode: MovementMode = MovementMode.Free:
	set(new_mode):
		if movement_mode != new_mode:
			movement_mode = new_mode
			
			if is_node_ready():
				update_click_mode_state_machine()
				
		
@export var animated_sprite: AnimatedSprite3D
@export var smooth_rotation: bool = true
@export var smooth_rotation_lerp_speed: float = 6.0
@export_category("Click movement")
@export var max_click_position_distance: float = 10.0
@export var can_change_click_position_while_moving: bool = true
@export var speed: float = 5.0
@export var sprint_multiplier: float = 1.3
@export var sprint_action: String = "sprint"

@onready var navigation_agent_3d: NavigationAgent3D = $NavigationAgent3D
@onready var camera: CameraShake3D = %Camera3D
@onready var click_mode_state_machine: IndieBlueprintFiniteStateMachine = $ClickModeStateMachine

enum MovementMode {
	Click,
	Free
}


func _unhandled_input(_event: InputEvent) -> void:
	if Input.is_action_just_pressed(&"ui_cancel"):
		IndieBlueprintCursorManager.switch_mouse_capture_mode()
		
		
func _ready() -> void:
	Input.mouse_mode = Input.MOUSE_MODE_CAPTURED
	update_click_mode_state_machine()
	
	click_mode_state_machine.register_transition(
		ThirdPersonClickModeNeutralStateToThirdPersonClickModeMovementStateTransition.new()
	)

var last_input_dir: Vector2 = Vector2.DOWN  # direction par défaut

func _process(_delta):
	var input_vector = Vector2(
		Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left"),
		Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	)

	if Input.is_action_pressed(sprint_action):
		speed = 5.0 * sprint_multiplier
		animated_sprite.speed_scale = sprint_multiplier
	else:
		speed = 5.0
		animated_sprite.speed_scale = 1.0

	if input_vector == Vector2.ZERO:
		if abs(last_input_dir.x) > abs(last_input_dir.y):
			animated_sprite.play("idle_right" if last_input_dir.x > 0 else "idle_left")
		else:
			if last_input_dir.y > 0:
					animated_sprite.play("idle_front")
			else:
				animated_sprite.play("idle_back")
	else:
		last_input_dir = input_vector
		if abs(input_vector.x) > abs(input_vector.y):
			animated_sprite.play("walk_right" if input_vector.x > 0 else "walk_left")
		else:
			animated_sprite.play("walk_front" if input_vector.y > 0 else "walk_back")
			
func look_at_mouse() -> void:
	var mouse = get_viewport().get_mouse_position()
	var origin := camera.project_ray_origin(mouse)
	var world_direction := camera.project_ray_normal(mouse)

	if world_direction.y != 0:
		var distance := -origin.y / world_direction.y
		var look_position := origin + world_direction * distance
		
		look_at(Vector3(look_position.x, global_position.y, look_position.z))

func _physics_process(_delta):
	if movement_mode == MovementMode.Free:
		var input_vector = Vector2(
			Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left"),
			Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
		)

		if input_vector.length() > 0:
			input_vector = input_vector.normalized()

			var cam_transform = camera.global_transform
			var cam_forward = cam_transform.basis.z
			var cam_right = cam_transform.basis.x

			var direction = (cam_forward * input_vector.y + cam_right * input_vector.x).normalized()

			# Vitesse normale
			var current_speed = speed

			# Si on appuie sur "sprint", on multiplie la vitesse
			if Input.is_action_pressed("sprint"):
				current_speed *= sprint_multiplier

			velocity.x = direction.x * current_speed
			velocity.z = direction.z * current_speed

			move_and_slide()
		else:
			velocity = Vector3.ZERO







#region Click mode
func can_move_to_next_click_position(next_position: Vector3) -> bool:
	return global_position.distance_to(next_position) <= max_click_position_distance
	

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
		
#endregion
