extends Node2D

@export var hit_circle_scene: PackedScene
@export var spawn_interval: float = 1.0
@export var damage_amount: int = 10
@export var health_component: Node

@onready var spawn_area: Area2D = $SpawnArea
@onready var spawn_shape: RectangleShape2D = $SpawnArea/CollisionShape2D.shape

func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)

	var spawn_timer = Timer.new()
	spawn_timer.wait_time = spawn_interval
	spawn_timer.autostart = true
	spawn_timer.one_shot = false
	spawn_timer.timeout.connect(_spawn_circle)
	add_child(spawn_timer)

	if health_component:
		health_component.died.connect(_on_health_component_died)

func _spawn_circle():
	var circle = hit_circle_scene.instantiate()

	var rect_size = spawn_shape.extents * 2.0
	var local_x = randf_range(0, rect_size.x)
	var local_y = randf_range(0, rect_size.y)
	var local_position = Vector2(local_x, local_y) - spawn_shape.extents

	var global_position = spawn_area.global_position + local_position
	circle.position = global_position

	circle.clicked.connect(_on_circle_clicked)
	add_child(circle)

	await get_tree().create_timer(1.0).timeout
	if circle and circle.is_inside_tree():
		circle.queue_free()

func _on_circle_clicked():
	if health_component:
		health_component.damage(damage_amount)

func _on_health_component_died():
	print("gnggng is dead")
