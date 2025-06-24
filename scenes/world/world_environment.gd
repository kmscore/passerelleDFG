extends WorldEnvironment

@export var pause_menu_path: NodePath
@export var pause_environment: Environment
@export var pause_blur_attributes: CameraAttributesPractical

var default_environment: Environment
var default_camera_attributes: CameraAttributes

func _ready() -> void:
	default_environment = environment
	default_camera_attributes = camera_attributes

	var pause_menu := get_node(pause_menu_path)
	pause_menu.pause_menu_opened.connect(on_pause_menu_opened)
	pause_menu.pause_menu_closed.connect(on_pause_menu_closed)

func on_pause_menu_opened() -> void:
	environment = pause_environment
	camera_attributes = pause_blur_attributes

func on_pause_menu_closed() -> void:
	environment = default_environment
	camera_attributes = default_camera_attributes
