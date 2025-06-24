extends Area2D

signal clicked

@warning_ignore("unused_parameter")
func _input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		emit_signal("clicked")
		queue_free()
