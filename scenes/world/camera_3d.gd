extends Camera3D

@export var target_path: NodePath
@export var follow_speed: float = 5.0
@export var fixed_z: float = 2
@export var fixed_y: float = 1

var target: Node3D

func _ready():
	target = get_node(target_path)

func _process(delta):
	if target:
		var desired_position = Vector3(target.global_transform.origin.x, target.global_transform.origin.y, fixed_z)
		global_transform.origin = global_transform.origin.lerp(desired_position, follow_speed * delta)
