class_name PauseMenu
extends Control

@export var open_input_action: StringName = InputControls.PauseGame

@onready var back_button: MenuBackButton = %BackButton
@onready var settings_button: Button = %SettingsButton
@onready var quit_game_button: Button = %QuitGameButton
@onready var settings_menu: SettingsMenu = $SettingsMenu
@onready var save_name_label: Label = %SaveName

var tween: Tween
var hidden_position: Vector2
var shown_position: Vector2
var positions_initialized := false

func _ready() -> void:
	process_mode = PROCESS_MODE_ALWAYS
	z_index = 1000
	
	hide()
	settings_menu.hide()
	settings_menu.z_index = z_index + 1

	save_name_label.text = IndieBlueprintSaveManager.current_saved_game.display_name if IndieBlueprintSaveManager.current_saved_game else ""
	
	IndieBlueprintSaveManager.created_savegame.connect(on_loaded_savegame)
	IndieBlueprintSaveManager.loaded_savegame.connect(on_loaded_savegame)
	
	settings_menu.visibility_changed.connect(on_settings_menu_visibility_changed)
	settings_button.pressed.connect(on_settings_button_pressed)
	quit_game_button.pressed.connect(on_quit_game_button_pressed)
	visibility_changed.connect(on_pause_menu_visibility_changed)

func _unhandled_input(_event: InputEvent) -> void:
	if Input.is_action_just_pressed(open_input_action):
		if visible:
			slide_out()
		else:
			slide_in()

func initialize_positions():
	if positions_initialized:
		return
	await get_tree().physics_frame  # Attend un frame pour être sûr que rect_size est bon
	shown_position = Vector2(0, 0)
	hidden_position = Vector2(-size.x, 0)  # size au lieu de rect_size
	position = hidden_position
	positions_initialized = true

func slide_in() -> void:
	initialize_positions()
	show()
	get_tree().paused = true
	tween = create_tween()
	tween.tween_property(self, "position", shown_position, 0.3).set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_OUT)
	settings_button.grab_focus()

func slide_out() -> void:
	tween = create_tween()
	tween.tween_property(self, "position", hidden_position, 0.3).set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN)
	tween.finished.connect(func():
		hide()
		get_tree().paused = false
	)

func on_pause_menu_visibility_changed() -> void:
	if visible:
		settings_button.grab_focus()

func on_loaded_savegame(saved_game: IndieBlueprintSavedGame) -> void:
	save_name_label.text = saved_game.display_name

func on_settings_menu_visibility_changed() -> void:
	await get_tree().physics_frame
	if settings_menu.visible:
		back_button.disable()
	else:
		back_button.enable()

func on_settings_button_pressed() -> void:
	settings_menu.show()

func on_quit_game_button_pressed() -> void:
	get_tree().quit()
