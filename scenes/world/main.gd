extends Node3D

@export var spawn_audio: AudioStream
@export var end_dialogue_audio: AudioStream

@onready var steam_player: AudioStreamPlayer = $SFXPlayer
@onready var dialogue_manager = DialogueManager
@onready var player = $ThirdPersonController
@onready var battle_area = $BattleArea

func _ready() -> void:
	if spawn_audio:
		steam_player.stream = spawn_audio
		steam_player.play()

	dialogue_manager.connect(
		"dialogue_ended",
		Callable(self, "_on_dialogue_ended")
	)

	if player.has_signal("battleactionable_found"):
		player.connect("battleactionable_found", Callable(battle_area, "_on_battleactionable_found"))

func _on_dialogue_ended(_resource: DialogueResource) -> void:
	if end_dialogue_audio:
		steam_player.stream = end_dialogue_audio
		steam_player.play()
