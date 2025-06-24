extends Area3D

@export var battle_scene: PackedScene

func _ready() -> void:
	# Check immédiat si overlap au démarrage
	if _has_overlapping_area():
		_start_battle()

func _has_overlapping_area() -> bool:
	for area in get_overlapping_areas():
		if area != self:
			return true
	return false

func _on_battleactionable_found(_area: Area3D) -> void:
	_start_battle()

func _start_battle() -> void:
	if battle_scene:
		IndieBlueprintSceneTransitioner.transition_to(battle_scene.resource_path)
