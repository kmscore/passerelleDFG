extends CanvasLayer


@onready var version_label: Label = %VersionLabel
@onready var title_label: Label = %TitleLabel

@onready var start_game_button: Button = %StartGameButton
@onready var settings_button: Button = %SettingsButton
@onready var credits_button: Button = %CreditsButton
@onready var exit_game_button: Button = %ExitGameButton
@export_file("*.tscn") var next_scene: String = ""


	
func _ready() -> void:
	start_game_button.pressed.connect(on_start_game_button_pressed)
	version_label.text = "v%s" % ProjectSettings.get_setting("application/config/version")
	
	start_game_button.focus_neighbor_top = exit_game_button.get_path()
	exit_game_button.focus_neighbor_bottom = start_game_button.get_path()
	start_game_button.grab_focus()
	
	exit_game_button.pressed.connect(on_exit_game_button_pressed)
func on_start_game_button_pressed() -> void:
	if next_scene != "":
		IndieBlueprintSceneTransitioner.transition_to(next_scene)


#region Signal callbacks
func on_exit_game_button_pressed() -> void:
	get_tree().quit()


#endregion
