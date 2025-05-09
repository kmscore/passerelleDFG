class_name WorldSaveSlotPanel extends HBoxContainer

signal selected

@export var saved_game: IndieBlueprintSavedGame
@export var sound_effect: AudioStream
@export var hover_sound_effect: AudioStream
@export var shared_player_path: NodePath = "res://ui/menus/layouts/pixel_art/SharedAudioPlayer.tscn"

@onready var world_save_slot_panel: Panel = $WorldSaveSlotPanel
@onready var save_slot_number: Label = $SaveSlotNumber
@onready var save_slot_name: Label = %SaveSlotName
@onready var audio_player: AudioStreamPlayer

func _ready() -> void:
	world_save_slot_panel.focus_mode = Control.FOCUS_ALL

	if saved_game:
		display_saved_game(saved_game)
	else:
		display_empty_slot()

	world_save_slot_panel.mouse_entered.connect(on_save_slot_focused)
	world_save_slot_panel.mouse_exited.connect(on_save_slot_unfocused)
	world_save_slot_panel.focus_entered.connect(on_save_slot_focused)
	world_save_slot_panel.focus_exited.connect(on_save_slot_unfocused)
	world_save_slot_panel.gui_input.connect(on_gui_input_save_slot_panel)
	world_save_slot_panel.mouse_entered.connect(on_hovered)
	world_save_slot_panel.focus_entered.connect(on_hovered)

	var shared_audio_scene = load(shared_player_path).instantiate()
	call_deferred("add_audio_scene", shared_audio_scene)

func add_audio_scene(shared_audio_scene):
	get_parent().add_child(shared_audio_scene)
	audio_player = shared_audio_scene.get_node("AudioStreamPlayer")

func display_saved_game(new_saved_game: IndieBlueprintSavedGame) -> void:
	saved_game = new_saved_game
	save_slot_name.text = saved_game.display_name

func display_empty_slot() -> void:
	save_slot_name.size_flags_horizontal = Control.SIZE_SHRINK_CENTER
	save_slot_name.text = TranslationKeys.EmptySaveSlot

func set_list_number(number: int) -> void:
	save_slot_number.text = str(number)

func on_gui_input_save_slot_panel(event: InputEvent) -> void:
	if Input.is_action_just_pressed("ui_accept") or IndieBlueprintInputHelper.is_mouse_left_click(event):
		if sound_effect and audio_player:
			audio_player.stream = sound_effect
			audio_player.play()

		selected.emit()

func on_save_slot_focused() -> void:
	var focus_theme_stylebox := StyleBoxFlat.new()
	focus_theme_stylebox.border_width_bottom = 2
	focus_theme_stylebox.border_width_top = 2
	focus_theme_stylebox.border_width_left = 2
	focus_theme_stylebox.border_width_right = 2

	world_save_slot_panel.add_theme_stylebox_override("panel", focus_theme_stylebox)

func on_save_slot_unfocused() -> void:
	world_save_slot_panel.remove_theme_stylebox_override("panel")

func on_hovered() -> void:
	if hover_sound_effect and audio_player:
		audio_player.stream = hover_sound_effect
		audio_player.play()
