extends Button

@export var sound_effect: AudioStream
@export var hover_sound_effect: AudioStream
@export var shared_player_path: NodePath = "res://ui/menus/layouts/pixel_art/SharedAudioPLayer.tscn"

var audio_player: AudioStreamPlayer
var sprite_scene = preload("res://ui/menus/layouts/pixel_art/assets/sprite_select.tscn")
var sprite_instance: Control

func _ready():
	var shared_audio_scene = load(shared_player_path).instantiate()
	call_deferred("add_audio_scene", shared_audio_scene)

	self.pressed.connect(_on_button_pressed)
	self.focus_entered.connect(_on_focus_entered)
	self.focus_exited.connect(_on_focus_exited)
	self.mouse_entered.connect(_on_mouse_entered)
	self.mouse_exited.connect(_on_mouse_exited)

	sprite_instance = sprite_scene.instantiate()
	sprite_instance.visible = false
	sprite_instance.mouse_filter = Control.MOUSE_FILTER_IGNORE  # <-- C'EST CETTE LIGNE QU'IL TE MANQUAIT
	add_child(sprite_instance)

func add_audio_scene(shared_audio_scene):
	get_parent().add_child(shared_audio_scene)
	audio_player = shared_audio_scene.get_node("AudioStreamPlayer")

func _on_button_pressed():
	if sound_effect and audio_player and audio_player.is_inside_tree():
		audio_player.stream = sound_effect
		audio_player.play()

func _play_hover_sound():
	if hover_sound_effect and audio_player and audio_player.is_inside_tree():
		audio_player.stream = hover_sound_effect
		audio_player.play()

func _on_focus_entered():
	sprite_instance.visible = true
	_play_hover_sound()

func _on_focus_exited():
	sprite_instance.visible = false

func _on_mouse_entered():
	if not has_focus():
		sprite_instance.visible = true
		_play_hover_sound()

func _on_mouse_exited():
	if not has_focus():
		sprite_instance.visible = false
