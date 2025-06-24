extends Label

@export var health_component_path: NodePath

var hc: Node = null

func _ready() -> void:
	hc = get_node_or_null(health_component_path)
	if not hc:
		push_error("HPDisplay : IndieBlueprintHealth introuvable")
		return

	hc.connect("health_changed", Callable(self, "_on_health_changed"))
	hc.connect("died", Callable(self, "_on_died"))
	_update_label()

func _on_health_changed(amount: int, type) -> void:
	_update_label()

func _on_died() -> void:
	text = "HP : 0 / %d" % hc.max_health

func _update_label() -> void:
	text = "HP : %d / %d" % [hc.current_health, hc.max_health]
