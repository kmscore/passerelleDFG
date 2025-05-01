extends Control

const SlotClass = preload("res://scenes/Inventory_System/slot.gd")
@onready var inventory_slots = $GridContainer
var holding_item = null

func _ready():
	for inv_slot in inventory_slots.get_children():
		inv_slot.gui_input.connect(_on_slot_gui_input.bind(inv_slot))

func _on_slot_gui_input(event: InputEvent, slot: SlotClass):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			if holding_item != null:
				if slot.item == null:
					slot.putIntoSlot(holding_item)
					holding_item = null
				else:
					var temp_item = slot.item
					slot.pickFromSlot()
					temp_item.global_position = event.global_position
					slot.putIntoSlot(holding_item)
					holding_item = temp_item
			elif slot.item != null:
				# Prendre l'objet depuis le slot
				holding_item = slot.item
				slot.pickFromSlot()
				holding_item.position = inventory_slots.get_local_mouse_position()

func _input(event):
	if holding_item:
		holding_item.position = inventory_slots.get_local_mouse_position()
