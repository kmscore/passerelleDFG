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

@export_category("Sounds")
@export var footstep_sound: AudioStream
@export var jump_sound: AudioStream
@export var footstep_volume_db: float = 0.0
@export var jump_volume_db: float = 0.0

signal toggle_inventory()
signal actionable_found
signal battleactionable_found(actionable)

@onready var navigation_agent_3d: NavigationAgent3D = $NavigationAgent3D
@onready var camera: CameraShake3D = %Camera3D
@onready var click_mode_state_machine: IndieBlueprintFiniteStateMachine = $ClickModeStateMachine
@onready var actionable_finder: Area3D = $ActionableFinder
@onready var audio_player: AudioStreamPlayer3D = $AudioStreamPlayer3D

enum MovementMode {
	Click,
	Free
}

var last_input_dir: Vector2 = Vector2.DOWN
var last_input_angle: float = 0.0
var is_in_dialogue: bool = false
var last_direction_pressed: String = ""

func _ready() -> void:
	Input.mouse_mode = Input.MOUSE_MODE_CAPTURED
	update_click_mode_state_machine()
	click_mode_state_machine.register_transition(
		ThirdPersonClickModeNeutralStateToThirdPersonClickModeMovementStateTransition.new()
	)
	DialogueManager.dialogue_started.connect(_on_dialogue_started)
	DialogueManager.dialogue_ended.connect(_on_dialogue_ended)

func _unhandled_input(_event: InputEvent) -> void:
	if is_in_dialogue:
		return

	if Input.is_action_just_pressed("interact"):
		var actionables = actionable_finder.get_overlapping_areas()
		if actionables.size() > 0:
			emit_signal("actionable_found", actionables[0])
			actionables[0].action()
			return

	if Input.is_action_just_pressed("ui_cancel"):
		IndieBlueprintCursorManager.switch_mouse_capture_mode()
	elif Input.is_action_just_pressed("inventory"):
		toggle_inventory.emit()

func _process(_delta: float) -> void:
	if is_in_dialogue:
		return
	_update_animation()

	var actionables = $BattleActionableFinder.get_overlapping_areas()
	if actionables.size() > 0:
		emit_signal("battleactionable_found", actionables[0])

func _update_animation() -> void:
	if not is_on_floor():
		return  # Ne change rien pendant le saut

	var dir_keys = ["ui_right", "ui_left", "ui_down", "ui_up"]
	for key in dir_keys:
		if Input.is_action_just_pressed(key):
			last_direction_pressed = key

	var input_vector = Vector2(
		Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left"),
		Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	)

	var is_sprinting = Input.is_action_pressed(sprint_action)

	if is_sprinting:
		speed = 5.0 * sprint_multiplier
		animated_sprite.speed_scale = sprint_multiplier
	else:
		speed = 5.0
		animated_sprite.speed_scale = 1.0

	var yaw = camera.global_transform.basis.get_euler().y
	var yaw_deg = fposmod(rad_to_deg(yaw), 360.0)

	if input_vector == Vector2.ZERO:
		if audio_player.playing and audio_player.stream == footstep_sound:
			audio_player.stop()

		for dir_data in [["front", 180.0], ["left", 270.0], ["back", 0.0], ["right", 90.0]]:
			var name_str = dir_data[0]
			var offset = dir_data[1]
			var center = fposmod(last_input_angle + offset, 360.0)
			var diff = fposmod(yaw_deg - center + 180.0, 360.0) - 180.0
			if abs(diff) <= 45.0:
				animated_sprite.play("idle_%s" % name_str)
				return
		animated_sprite.play("idle_back")
	else:
		_play_footstep_sound(is_sprinting)
		last_input_dir = input_vector.normalized()
		last_input_angle = yaw_deg

		match last_direction_pressed:
			"ui_up":
				animated_sprite.play("walk_back")
			"ui_down":
				animated_sprite.play("walk_front")
			"ui_left":
				animated_sprite.play("walk_left")
			"ui_right":
				animated_sprite.play("walk_right")
			_:
				if abs(last_input_dir.x) > abs(last_input_dir.y):
					animated_sprite.play("walk_right" if last_input_dir.x > 0.0 else "walk_left")
				else:
					animated_sprite.play("walk_front" if last_input_dir.y > 0.0 else "walk_back")

		if smooth_rotation:
			rotation.y = lerp_angle(rotation.y, yaw, smooth_rotation_lerp_speed * get_process_delta_time())

func _physics_process(_delta: float) -> void:
	if is_in_dialogue:
		velocity = Vector3.ZERO
		move_and_slide()
		return

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

		if is_on_floor():
			if Input.is_action_just_pressed("ui_accept"):
				velocity.y = jump_velocity
				_play_jump_sound()
				animated_sprite.play("jump_back")
		else:
			if animated_sprite.animation != "jump_back":
				animated_sprite.play("jump_back")

		velocity.y -= gravity * _delta
		move_and_slide()

func _play_footstep_sound(is_sprinting: bool) -> void:
	if footstep_sound and not audio_player.playing:
		audio_player.stream = footstep_sound
		audio_player.volume_db = footstep_volume_db
		# Accélère le son de footstep en fonction de la vitesse de déplacement
		audio_player.pitch_scale = sprint_multiplier if is_sprinting else 1.0
		audio_player.play()

func _play_jump_sound() -> void:
	if jump_sound:
		audio_player.stream = jump_sound
		audio_player.volume_db = jump_volume_db
		audio_player.play()

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

func _on_dialogue_started(_resource: DialogueResource) -> void:
	is_in_dialogue = true
	var current_anim = animated_sprite.animation
	if current_anim.begins_with("walk_"):
		var idle_anim = "idle_" + current_anim.substr(5)
		animated_sprite.play(idle_anim)

func _on_dialogue_ended(_resource: DialogueResource) -> void:
	is_in_dialogue = false
