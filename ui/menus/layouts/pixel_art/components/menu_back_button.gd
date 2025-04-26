class_name MenuBackButton extends Button

signal returned_back

@export var linked_menu: Control
@export var back_input_action: StringName = &"ui_cancel"
@export var sound_effect: AudioStream

var is_enabled: bool = true
var shared_player_scene: PackedScene = preload("res://ui/menus/layouts/pixel_art/SharedAudioPLayer.tscn")
var audio_player: AudioStreamPlayer

func _ready() -> void:
	if linked_menu == null:
		linked_menu = get_parent()
	pressed.connect(on_pressed)
	
	var shared_audio_scene = shared_player_scene.instantiate()
	call_deferred("add_audio_scene", shared_audio_scene)

func add_audio_scene(shared_audio_scene):
	get_tree().root.add_child(shared_audio_scene)
	audio_player = shared_audio_scene.get_node("AudioStreamPlayer")

func _unhandled_input(_event: InputEvent) -> void:
	if is_enabled and visible and not back_input_action.is_empty() and Input.is_action_just_pressed(back_input_action):
		go_back()

func enable() -> void:
	is_enabled = true

func disable() -> void:
	is_enabled = false

func go_back() -> void:
	if is_enabled and visible:
		if sound_effect and audio_player:
			audio_player.stream = sound_effect
			audio_player.play()
		linked_menu.hide()
		returned_back.emit()

func on_pressed() -> void:
	go_back()

func _on_pressed() -> void:
	pass
