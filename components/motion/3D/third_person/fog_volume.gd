extends FogVolume

@export var target : NodePath
@export var offset : Vector3 = Vector3(0, 0, 0)

var player : Node3D

func _ready():
	player = get_node(target)

func _process(delta):
	if player:
		position = player.position + offset
