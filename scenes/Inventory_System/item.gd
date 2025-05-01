extends Control

func get_random_float() -> float:
	return randf()

func _ready() -> void:
	randomize()
	
	if randi() % 2 == 0:
		$TextureRect.texture = load("res://assets/textures/heart.png")
	else:
		$TextureRect.texture = load("res://assets/textures/heal.png")
