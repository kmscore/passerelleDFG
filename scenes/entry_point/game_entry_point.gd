extends Node

@export_file("*.tscn") var next_scene: String = ""

func _ready() -> void:
	if not next_scene.is_empty():
		IndieBlueprintSceneTransitioner.transition_to(next_scene)
