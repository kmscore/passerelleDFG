extends Button

@export var sound_effect: AudioStream
@export var hover_sound_effect: AudioStream
@export var shared_player_path: NodePath = "res://ui/menus/layouts/pixel_art/SharedAudioPLayer.tscn"

var audio_player: AudioStreamPlayer

func _ready():
	var shared_audio_scene = load(shared_player_path).instantiate()
	call_deferred("add_audio_scene", shared_audio_scene)
	self.pressed.connect(_on_button_pressed)
	self.focus_entered.connect(_on_button_hovered)

func add_audio_scene(shared_audio_scene):
	get_parent().add_child(shared_audio_scene)
	audio_player = shared_audio_scene.get_node("AudioStreamPlayer")

func _on_button_pressed():
	if sound_effect and audio_player and audio_player.is_inside_tree():
		audio_player.stream = sound_effect
		audio_player.play()

func _on_button_hovered():
	if hover_sound_effect and audio_player and audio_player.is_inside_tree():
		audio_player.stream = hover_sound_effect
		audio_player.play()
