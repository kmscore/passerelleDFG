extends AudioStreamPlayer
@export var sound_effect : AudioStream  # Le son à jouer

var audio_player : AudioStreamPlayer  # Assurez-vous d'avoir un AudioStreamPlayer sous le bouton

func _ready():
	audio_player = $AudioStreamPlayer  # Assurez-vous que le nœud AudioStreamPlayer existe

func _on_button_pressed():
	audio_player.stream = sound_effect
	audio_player.play()


func _on_start_game_button_pressed() -> void:
	pass # Replace with function body.
