class_name IndieBlueprintPreloader

class Scenes:
	const ResizableBoxRectScene: PackedScene = preload("res://ui/components/ninepatchrect/resizable_box_rect.tscn")

	const InputRemapPanelScene: PackedScene = preload("res://ui/menus/components/panel/input_remap_panel.tscn")

	const InputActionKeybindingScene: PackedScene = preload("res://ui/menus/components/panel/input_action_keybinding.tscn")

	const SettingsMenuScene: PackedScene = preload("res://ui/menus/layouts/settings/tabs/settings_menu.tscn")

	const AudioSettingsMenuScene: PackedScene = preload("res://ui/menus/layouts/pixel_art/settings/audio_settings_menu.tscn")

	const SettingsMenuScene_1: PackedScene = preload("res://ui/menus/layouts/pixel_art/settings/settings_menu.tscn")

	const AccessibilityMenuScene: PackedScene = preload("res://ui/menus/layouts/pixel_art/settings/accessibility_menu.tscn")

	const DisplaySettingsMenuScene: PackedScene = preload("res://ui/menus/layouts/pixel_art/settings/display_settings_menu.tscn")

	const ControlSettingsMenuScene: PackedScene = preload("res://ui/menus/layouts/pixel_art/settings/control_settings_menu.tscn")

	const MenuDisplayPanelScene: PackedScene = preload("res://ui/menus/layouts/pixel_art/components/menu_display_panel.tscn")

	const WorldSaveSlotPanelScene: PackedScene = preload("res://ui/menus/layouts/pixel_art/components/world_save_slot_panel.tscn")

	const WorldSelectionScene: PackedScene = preload("res://ui/menus/layouts/pixel_art/world_selection.tscn")

	const PauseMenuScene: PackedScene = preload("res://ui/menus/layouts/pixel_art/pause_menu.tscn")

	const NewSaveScreenScene: PackedScene = preload("res://ui/menus/layouts/pixel_art/new_save_screen.tscn")

	const SpriteSelectScene: PackedScene = preload("res://ui/menus/layouts/pixel_art/assets/sprite_select.tscn")

	const SharedAudioPLayerScene: PackedScene = preload("res://ui/menus/layouts/pixel_art/SharedAudioPLayer.tscn")

	const MainMenuScene: PackedScene = preload("res://ui/menus/layouts/pixel_art/main_menu.tscn")

	const PerformanceMetricsScene: PackedScene = preload("res://ui/performance/metrics/performance_metrics.tscn")

	const ContentWarningDisplayerScene: PackedScene = preload("res://ui/content_warning/content_warning_displayer.tscn")

	const BattlestartScene: PackedScene = preload("res://scenes/battlestart.tscn")

	const Game-entryPointScene: PackedScene = preload("res://scenes/entry_point/game-entry_point.tscn")

	const HitCircleScene: PackedScene = preload("res://scenes/HitCircle.tscn")

	const BattleSceneScene: PackedScene = preload("res://scenes/battle_scene.tscn")

	const ProjectileScene: PackedScene = preload("res://scenes/projectile.tscn")

	const AttackSceneScene: PackedScene = preload("res://scenes/AttackScene.tscn")

	const ActionableScene: PackedScene = preload("res://scenes/world/Dialogues/actionable.tscn")

	const Npc2Scene: PackedScene = preload("res://scenes/world/npc2.tscn")

	const WorldScene: PackedScene = preload("res://scenes/world/world.tscn")

	const NpcScene: PackedScene = preload("res://scenes/world/npc.tscn")

	const CélineScene: PackedScene = preload("res://scenes/world/céline.tscn")

	const PlayerbattleScene: PackedScene = preload("res://scenes/playerbattle.tscn")

	const HospitalScene: PackedScene = preload("res://scenes/hospital.tscn")

	const MapScene: PackedScene = preload("res://scenes/map.tscn")

	const ThirdPersonControllerScene: PackedScene = preload("res://components/motion/3D/third_person/third_person_controller.tscn")

	const ThirdPersonControllerScene_1: PackedScene = preload("res://components/motion/3D/third_person/click_mode/third_person_controller.tscn")

	const BulletTraceScene: PackedScene = preload("res://components/motion/3D/first_person/weapons/bullets/traces/bullet_trace.tscn")

	const BulletBloodImpactScene: PackedScene = preload("res://components/motion/3D/first_person/weapons/bullets/impacts/scenes/bullet_blood_impact.tscn")

	const BulletImpactSmokeScene: PackedScene = preload("res://components/motion/3D/first_person/weapons/bullets/impacts/scenes/bullet_impact_smoke.tscn")

	const BulletImpactManagerScene: PackedScene = preload("res://components/motion/3D/first_person/weapons/bullets/impacts/bullet_impact_manager.tscn")

	const BulletHoleNormalScene: PackedScene = preload("res://components/motion/3D/first_person/weapons/bullets/decals/scenes/bullet_hole_normal.tscn")

	const BulletHoleOrganicBloodScene: PackedScene = preload("res://components/motion/3D/first_person/weapons/bullets/decals/scenes/bullet_hole_organic_blood.tscn")

	const BulletHoleMetalScene: PackedScene = preload("res://components/motion/3D/first_person/weapons/bullets/decals/scenes/bullet_hole_metal.tscn")

	const BulletHoleShinyScene: PackedScene = preload("res://components/motion/3D/first_person/weapons/bullets/decals/scenes/bullet_hole_shiny.tscn")

	const MuzzleFlashScene: PackedScene = preload("res://components/motion/3D/first_person/weapons/muzzle/emitter/muzzle_flash.tscn")

	const FirstPersonControllerScene: PackedScene = preload("res://components/motion/3D/first_person/first_person_controller.tscn")

	const DungeonControllerScene: PackedScene = preload("res://components/motion/3D/dungeon_crawler/dungeon_controller.tscn")

	const PopCircleEffectSpawnerScene: PackedScene = preload("res://components/vfx/2D/pop_effect/pop_circle_effect_spawner.tscn")

	const PopScene: PackedScene = preload("res://components/vfx/2D/pop_effect/pop.tscn")

	const ShockwaveScene: PackedScene = preload("res://components/vfx/2D/shockwave/shockwave.tscn")

	const DynamicScreenPointerScene: PackedScene = preload("res://autoload/screen/dynamic_screen_pointer.tscn")

	const GlobalEffectsScene: PackedScene = preload("res://autoload/effects/global_effects.tscn")

	const IndustrialExteriorV2Scene: PackedScene = preload("res://assets/3d/industrial_exterior_v_2.tscn")

class Scripts:
	const Pixel-viewport-draw = preload("res://ui/debug_ui/pixel-viewport-draw.gd")

	const HueShift = preload("res://ui/narrative/text/rich_text_effects/hue_shift.gd")

	const ColorBlink = preload("res://ui/narrative/text/rich_text_effects/color_blink.gd")

	const Wiggle = preload("res://ui/narrative/text/rich_text_effects/wiggle.gd")

	const AutoTypedText = preload("res://ui/narrative/text/auto_typed_text.gd")

	const MouseParallax = preload("res://ui/mouse/parallax/mouse_parallax.gd")

	const ResizableNinepatchrect = preload("res://ui/components/ninepatchrect/resizable_ninepatchrect.gd")

	const ScreenModeOptionButton = preload("res://ui/menus/components/option_button/screen_mode_option_button.gd")

	const LanguageSelectorOptionButton = preload("res://ui/menus/components/option_button/language_selector_option_button.gd")

	const ScreenResolutionsOptionButton = preload("res://ui/menus/components/option_button/screen_resolutions_option_button.gd")

	const Scale3dModeOptionButton = preload("res://ui/menus/components/option_button/scale_3d_mode_option_button.gd")

	const MonitorSelectorOptionButton = preload("res://ui/menus/components/option_button/monitor_selector_option_button.gd")

	const InputActionKeybinding = preload("res://ui/menus/components/panel/input_action_keybinding.gd")

	const InputRemapPanel = preload("res://ui/menus/components/panel/input_remap_panel.gd")

	const ScreenBorderlessCheckbox = preload("res://ui/menus/components/checkbox/screen_borderless_checkbox.gd")

	const IntegerScalingCheckbox = preload("res://ui/menus/components/checkbox/integer_scaling_checkbox.gd")

	const InvertedMouseCheckbox = preload("res://ui/menus/components/checkbox/inverted_mouse_checkbox.gd")

	const AllowTelemetryCheckbox = preload("res://ui/menus/components/checkbox/allow_telemetry_checkbox.gd")

	const PhotosensitiveCheckbox = preload("res://ui/menus/components/checkbox/photosensitive_checkbox.gd")

	const ScreenshakeCheckbox = preload("res://ui/menus/components/checkbox/screenshake_checkbox.gd")

	const VsyncCheckbox = preload("res://ui/menus/components/checkbox/vsync_checkbox.gd")

	const MutedAudioCheckButton = preload("res://ui/menus/components/checkbox/muted_audio_check_button.gd")

	const MuteAudioCheckbox = preload("res://ui/menus/components/checkbox/mute_audio_checkbox.gd")

	const ProjectVersion = preload("res://ui/menus/components/label/project_version.gd")

	const ScreenContrastSlider = preload("res://ui/menus/components/slider/screen_contrast_slider.gd")

	const AudioSlider = preload("res://ui/menus/components/slider/audio_slider.gd")

	const ControllerSensitivitySlider = preload("res://ui/menus/components/slider/controller_sensitivity_slider.gd")

	const ScreenBrightnessSlider = preload("res://ui/menus/components/slider/screen_brightness_slider.gd")

	const MouseSensitivitySlider = preload("res://ui/menus/components/slider/mouse_sensitivity_slider.gd")

	const ScreenSaturationSlider = preload("res://ui/menus/components/slider/screen_saturation_slider.gd")

	const CameraFovSlider = preload("res://ui/menus/components/slider/camera_fov_slider.gd")

	const Scale3dSlider = preload("res://ui/menus/components/slider/scale_3d_slider.gd")

	const FpsLimitHboxContainer = preload("res://ui/menus/components/hbox/fps_limit_hbox_container.gd")

	const GraphicsQualityPresetHboxContainer = preload("res://ui/menus/components/hbox/graphics_quality_preset_hbox_container.gd")

	const SettingsMenu = preload("res://ui/menus/layouts/settings/tabs/settings_menu.gd")

	const MainMenu = preload("res://ui/menus/layouts/simple/main_menu.gd")

	const SettingsMenu_1 = preload("res://ui/menus/layouts/pixel_art/settings/settings_menu.gd")

	const DisplaySettingsMenu = preload("res://ui/menus/layouts/pixel_art/settings/display_settings_menu.gd")

	const Button_1 = preload("res://ui/menus/layouts/pixel_art/button.gd")

	const AudioStreamPlayer_1 = preload("res://ui/menus/layouts/pixel_art/audio_stream_player.gd")

	const PauseMenu = preload("res://ui/menus/layouts/pixel_art/pause_menu.gd")

	const MenuBackButton = preload("res://ui/menus/layouts/pixel_art/components/menu_back_button.gd")

	const WorldSaveSlotPanel = preload("res://ui/menus/layouts/pixel_art/components/world_save_slot_panel.gd")

	const MainMenu_1 = preload("res://ui/menus/layouts/pixel_art/main_menu.gd")

	const QuitGameButton = preload("res://ui/menus/layouts/pixel_art/quit_game_button.gd")

	const Background = preload("res://ui/menus/layouts/pixel_art/background.gd")

	const WorldSelection = preload("res://ui/menus/layouts/pixel_art/world_selection.gd")

	const AudioStreamPlayer2d = preload("res://ui/menus/layouts/pixel_art/audio_stream_player_2d.gd")

	const NewSaveScreen = preload("res://ui/menus/layouts/pixel_art/new_save_screen.gd")

	const PerformanceMetrics = preload("res://ui/performance/metrics/performance_metrics.gd")

	const ContentWarning = preload("res://ui/content_warning/advisors/content_warning.gd")

	const ContentWarningDisplayer = preload("res://ui/content_warning/content_warning_displayer.gd")

	const Label_1 = preload("res://scenes/label.gd")

	const Projectile = preload("res://scenes/projectile.gd")

	const GameEntryPoint = preload("res://scenes/entry_point/game_entry_point.gd")

	const BattleScene = preload("res://scenes/battle_scene.gd")

	const WorldEnvironment_1 = preload("res://scenes/world/world_environment.gd")

	const Main = preload("res://scenes/world/main.gd")

	const InventoryInterface = preload("res://scenes/world/inventory_interface.gd")

	const Npc = preload("res://scenes/world/npc.gd")

	const Actionable = preload("res://scenes/world/actionable.gd")

	const Camera3d = preload("res://scenes/world/camera_3d.gd")

	const SpriteKeyE = preload("res://scenes/world/sprite_key_e.gd")

	const Playerbattle = preload("res://scenes/playerbattle.gd")

	const AttackScene = preload("res://scenes/AttackScene.gd")

	const HitCircle = preload("res://scenes/hit_circle.gd")

	const Battle = preload("res://battle.gd")

	const TraumaCauser3d = preload("res://components/camera/3D/shake/trauma_causer_3d.gd")

	const TraumaDetector3d = preload("res://components/camera/3D/shake/trauma_detector_3d.gd")

	const CameraShake3d = preload("res://components/camera/3D/shake/camera_shake_3d.gd")

	const FreeLookCamera3d = preload("res://components/camera/3D/free_look/free_look_camera_3d.gd")

	const AerialCamera = preload("res://components/camera/3D/aerial/aerial_camera.gd")

	const TraumaCauser2d = preload("res://components/camera/2D/shake/trauma_causer_2d.gd")

	const ShakeCamera2d = preload("res://components/camera/2D/shake/shake_camera_2d.gd")

	const TraumaDetector2d = preload("res://components/camera/2D/shake/trauma_detector_2d.gd")

	const FogVolume_1 = preload("res://components/motion/3D/third_person/fog_volume.gd")

	const Inventory = preload("res://components/motion/3D/third_person/inventory.gd")

	const MovementState = preload("res://components/motion/3D/third_person/click_mode/states/movement_state.gd")

	const ProjectilePreditionState = preload("res://components/motion/3D/third_person/click_mode/states/projectile_predition_state.gd")

	const BaseState = preload("res://components/motion/3D/third_person/click_mode/states/base_state.gd")

	const NeutralState = preload("res://components/motion/3D/third_person/click_mode/states/neutral_state.gd")

	const Transition = preload("res://components/motion/3D/third_person/click_mode/states/transitions/transition.gd")

	const ThirdPersonController = preload("res://components/motion/3D/third_person/third_person_controller.gd")

	const SpringArmPivot = preload("res://components/motion/3D/third_person/spring_arm_pivot.gd")

	const CameraController = preload("res://components/motion/3D/first_person/camera/camera_controller.gd")

	const WeaponsDatabase = preload("res://components/motion/3D/first_person/weapons/database/weapons_database.gd")

	const FirearmWeaponBullet = preload("res://components/motion/3D/first_person/weapons/configuration/firearm_weapon_bullet.gd")

	const FirearmWeaponMotionConfiguration = preload("res://components/motion/3D/first_person/weapons/configuration/firearm_weapon_motion_configuration.gd")

	const FirearmWeaponAmmo = preload("res://components/motion/3D/first_person/weapons/configuration/firearm_weapon_ammo.gd")

	const FirearmWeaponFire = preload("res://components/motion/3D/first_person/weapons/configuration/firearm_weapon_fire.gd")

	const FirearmWeaponConfiguration = preload("res://components/motion/3D/first_person/weapons/configuration/firearm_weapon_configuration.gd")

	const BulletTrace = preload("res://components/motion/3D/first_person/weapons/bullets/traces/bullet_trace.gd")

	const BulletImpact = preload("res://components/motion/3D/first_person/weapons/bullets/impacts/bullet_impact.gd")

	const BulletImpactManager = preload("res://components/motion/3D/first_person/weapons/bullets/impacts/bullet_impact_manager.gd")

	const Bullet = preload("res://components/motion/3D/first_person/weapons/bullets/bullet.gd")

	const BulletTraceManager = preload("res://components/motion/3D/first_person/weapons/bullets/bullet_trace_manager.gd")

	const WeaponHand = preload("res://components/motion/3D/first_person/weapons/weapon_hand.gd")

	const Tilt = preload("res://components/motion/3D/first_person/weapons/motion/tilt.gd")

	const Sway = preload("res://components/motion/3D/first_person/weapons/motion/sway.gd")

	const Bob = preload("res://components/motion/3D/first_person/weapons/motion/bob.gd")

	const Recoil = preload("res://components/motion/3D/first_person/weapons/motion/recoil.gd")

	const FirearmWeaponMotion = preload("res://components/motion/3D/first_person/weapons/motion/firearm_weapon_motion.gd")

	const Impulse = preload("res://components/motion/3D/first_person/weapons/motion/impulse.gd")

	const FirearmWeaponManager = preload("res://components/motion/3D/first_person/weapons/firearm_weapon_manager.gd")

	const FirearmWeapon = preload("res://components/motion/3D/first_person/weapons/firearm_weapon.gd")

	const WeaponMesh = preload("res://components/motion/3D/first_person/weapons/weapon_mesh.gd")

	const MuzzleFlash = preload("res://components/motion/3D/first_person/weapons/muzzle/emitter/muzzle_flash.gd")

	const FirstPersonController = preload("res://components/motion/3D/first_person/first_person_controller.gd")

	const Walk = preload("res://components/motion/3D/first_person/states/ground/walk.gd")

	const Ground = preload("res://components/motion/3D/first_person/states/ground/ground.gd")

	const Crawl = preload("res://components/motion/3D/first_person/states/ground/crawl.gd")

	const Idle = preload("res://components/motion/3D/first_person/states/ground/idle.gd")

	const Run = preload("res://components/motion/3D/first_person/states/ground/run.gd")

	const Slide = preload("res://components/motion/3D/first_person/states/ground/slide.gd")

	const Crouch = preload("res://components/motion/3D/first_person/states/ground/crouch.gd")

	const Dash = preload("res://components/motion/3D/first_person/states/ground/dash.gd")

	const Fall = preload("res://components/motion/3D/first_person/states/air/fall.gd")

	const Air = preload("res://components/motion/3D/first_person/states/air/air.gd")

	const Jump = preload("res://components/motion/3D/first_person/states/air/jump.gd")

	const RunToWalkTransition = preload("res://components/motion/3D/first_person/states/transitions/run_to_walk_transition.gd")

	const WalkToRunTransition = preload("res://components/motion/3D/first_person/states/transitions/walk_to_run_transition.gd")

	const FootstepManager3d = preload("res://components/motion/3D/first_person/footsteps/footstep_manager_3d.gd")

	const FootstepSound = preload("res://components/motion/3D/first_person/footsteps/footstep_sound.gd")

	const DungeonController = preload("res://components/motion/3D/dungeon_crawler/dungeon_controller.gd")

	const DungeonGridMovement = preload("res://components/motion/3D/dungeon_crawler/dungeon_grid_movement.gd")

	const Hitbox3d = preload("res://components/collisions/hitbox_hurtbox/hitbox_3d.gd")

	const Hitbox2d = preload("res://components/collisions/hitbox_hurtbox/hitbox_2d.gd")

	const Hurtbox3d = preload("res://components/collisions/hitbox_hurtbox/hurtbox_3d.gd")

	const Hurtbox2d = preload("res://components/collisions/hitbox_hurtbox/hurtbox_2d.gd")

	const GhostTrailEffect = preload("res://components/vfx/2D/ghost_trail/ghost_trail_effect.gd")

	const Pop = preload("res://components/vfx/2D/pop_effect/pop.gd")

	const PopCircleSpawner = preload("res://components/vfx/2D/pop_effect/pop_circle_spawner.gd")

	const Shockwave = preload("res://components/vfx/2D/shockwave/shockwave.gd")

	const DynamicWorldEnvironment = preload("res://components/environment/dynamic_world_environment.gd")

	const DayNightCycle = preload("res://components/environment/day_night_cycle/day_night_cycle.gd")

	const DynamicDirectionalLight = preload("res://components/environment/dynamic_directional_light.gd")

	const VisualHint3d = preload("res://components/interaction/3D/visuals/visual_hint_3d.gd")

	const RandomLightEnergy3d = preload("res://components/interaction/3D/lights/random_light_energy_3d.gd")

	const SwitchableLight3d = preload("res://components/interaction/3D/lights/switchable_light_3d.gd")

	const Interactable2d = preload("res://components/interaction/2D/interactables/interactable_2d.gd")

	const AreaInteractor2d = preload("res://components/interaction/2D/interactors/area_interactor_2d.gd")

	const GameGlobals = preload("res://autoload/general/game_globals.gd")

	const GlobalGameEvents = preload("res://autoload/general/global_game_events.gd")

	const GamepadControllerManager = preload("res://autoload/gamepad/gamepad_controller_manager.gd")

	const Preloader = preload("res://autoload/content/preloader.gd")

	const DynamicScreenPointerCanvasLayer = preload("res://autoload/screen/dynamic_screen_pointer_canvas_layer.gd")

	const DynamicScreenPointer = preload("res://autoload/screen/dynamic_screen_pointer.gd")

	const CursorManager = preload("res://autoload/screen/cursor_manager.gd")

	const SettingsManager = preload("res://autoload/persistence/settings/settings_manager.gd")

	const InputControls = preload("res://autoload/persistence/settings/input_controls.gd")

	const GameSettings = preload("res://autoload/persistence/settings/game_settings.gd")

	const GlobalEffects = preload("res://autoload/effects/global_effects.gd")

	const TranslationKeys = preload("res://localization/translation_keys.gd")

class Resources:
	const MainmenuthemeResource: Resource = preload("res://ui/menus/layouts/pixel_art/mainmenutheme.tres")

	const DialogueChoiceResource: Resource = preload("res://ui/menus/layouts/pixel_art/dialogue_choice.tres")

	const ContentWarningSubtitleLabelResource: Resource = preload("res://ui/menus/layouts/pixel_art/theme/content_warning_subtitle_label.tres")

	const ContentWarningTitleLabelResource: Resource = preload("res://ui/menus/layouts/pixel_art/theme/content_warning_title_label.tres")

	const MenuSettingsLabelResource: Resource = preload("res://ui/menus/layouts/pixel_art/theme/label_configurations/menu_settings_label.tres")

	const UiPanelStyleboxFlatFocusedResource: Resource = preload("res://ui/menus/layouts/pixel_art/theme/ui_panel_stylebox_flat_focused.tres")

	const UiPanelStyleboxFlatResource: Resource = preload("res://ui/menus/layouts/pixel_art/theme/ui_panel_stylebox_flat.tres")

	const UiThemeResource: Resource = preload("res://ui/menus/layouts/pixel_art/theme/ui_theme.tres")

	const NewThemeResource: Resource = preload("res://ui/menus/layouts/new_theme.tres")

	const HardwareLabelSettingsResource: Resource = preload("res://ui/performance/metrics/hardware_label_settings.tres")

	const ContentWarningHorrorElementsResource: Resource = preload("res://ui/content_warning/advisors/content_warning_horror_elements.tres")

	const ContentWarningSuicideResource: Resource = preload("res://ui/content_warning/advisors/content_warning_suicide.tres")

	const ContentWarningResemblanceResource: Resource = preload("res://ui/content_warning/advisors/content_warning_resemblance.tres")

	const ContentWarningPhotosensitiveResource: Resource = preload("res://ui/content_warning/advisors/content_warning_photosensitive.tres")

	const ContentWarningMatureContentResource: Resource = preload("res://ui/content_warning/advisors/content_warning_mature_content.tres")

	const PauseCameraResource: Resource = preload("res://scenes/world/pause_camera.tres")

	const PauseEnvirronementResource: Resource = preload("res://scenes/world/pause_envirronement.tres")

	const WorldCameraResource: Resource = preload("res://scenes/world/world_camera.tres")

	const WorldResource: Resource = preload("res://scenes/world/world.tres")

	const BulletTraceResource: Resource = preload("res://components/motion/3D/first_person/weapons/bullets/traces/bullet_trace.tres")

	const BloodResource: Resource = preload("res://components/motion/3D/first_person/weapons/bullets/impacts/textures/blood/Blood.tres")

	const MtBloodResource: Resource = preload("res://components/motion/3D/first_person/weapons/bullets/impacts/textures/blood/MT_Blood.tres")

	const MtImpactResource: Resource = preload("res://components/motion/3D/first_person/weapons/bullets/impacts/MT_Impact.tres")

	const ImpactResource: Resource = preload("res://components/motion/3D/first_person/weapons/bullets/impacts/impact.tres")

	const BulletImpactResource: Resource = preload("res://components/motion/3D/first_person/weapons/bullets/impacts/bullet_impact.tres")

	const MuzzleFlashResource: Resource = preload("res://components/motion/3D/first_person/weapons/muzzle/emitter/muzzle_flash.tres")

	const MuzzleFlashBaseMaterialResource: Resource = preload("res://components/motion/3D/first_person/weapons/muzzle/emitter/muzzle_flash_base_material.tres")

	const NormalSunColorGradientResource: Resource = preload("res://components/environment/day_night_cycle/sun_gradients/normal/normal_sun_color_gradient.tres")

	const NormalSunIntensityCurveResource: Resource = preload("res://components/environment/day_night_cycle/sun_gradients/normal/normal_sun_intensity_curve.tres")

	const NormalMoonIntensityCurveResource: Resource = preload("res://components/environment/day_night_cycle/moon_gradients/normal/normal_moon_intensity_curve.tres")

	const NormalMoonColorGradientResource: Resource = preload("res://components/environment/day_night_cycle/moon_gradients/normal/normal_moon_color_gradient.tres")

	const NormalSkyHorizonGradientResource: Resource = preload("res://components/environment/day_night_cycle/sky_color_gradients/normal/normal_sky_horizon_gradient.tres")

	const NormalSkyTopColorGradientResource: Resource = preload("res://components/environment/day_night_cycle/sky_color_gradients/normal/normal_sky_top_color_gradient.tres")

	const NormalSkyGroundGradientResource: Resource = preload("res://components/environment/day_night_cycle/sky_color_gradients/normal/normal_sky_ground_gradient.tres")

	const NewSkyResource: Resource = preload("res://components/interaction/new_sky.tres")

	const DefaultBusLayoutResource: Resource = preload("res://default_bus_layout.tres")

	const BridgeResource: Resource = preload("res://assets/3d/Bridge.res")

	const Lambert1Resource: Resource = preload("res://assets/3d/lambert1.tres")

	const SimpleWaterResource: Resource = preload("res://assets/materials/water/simple/simple_water.tres")

	const MainFontResource: Resource = preload("res://assets/fonts/Font themes/Main_font.tres")

class Shaders:
	const ThirdPersonControllerShader: Shader = preload("res://components/motion/3D/third_person/third_person_controller.gdshader")

	const SkyShader: Shader = preload("res://components/environment/day_night_cycle/sky_panoramas/sky.gdshader")

	const ViewmodelShader: Shader = preload("res://shaders/viewmodel/viewmodel.gdshader")

	const ImageChunkLoadShader: Shader = preload("res://shaders/textures/image_chunk_load.gdshader")

	const TintWhitePixelsShader: Shader = preload("res://shaders/textures/tint_white_pixels.gdshader")

	const BlinkShader: Shader = preload("res://shaders/textures/blink.gdshader")

	const InfiniteLoopingTextureShader: Shader = preload("res://shaders/textures/infinite_looping_texture.gdshader")

	const OilMoveShader: Shader = preload("res://shaders/textures/oil_move.gdshader")

	const VhsShader: Shader = preload("res://shaders/vhs/vhs.gdshader")

	const ScanlinesShader: Shader = preload("res://shaders/vhs/scanlines.gdshader")

	const VhsSoftShader: Shader = preload("res://shaders/vhs/vhs_soft.gdshader")

	const PixelPerfectOutlineShader: Shader = preload("res://shaders/environment/pixel_perfect_outline.gdshader")

	const UnderwaterShader: Shader = preload("res://shaders/environment/underwater.gdshader")

	const VignetteShader: Shader = preload("res://shaders/vignette/vignette.gdshader")

	const BlurVignetteShader: Shader = preload("res://shaders/vignette/blur_vignette.gdshader")

	const NightmareVignetteShader: Shader = preload("res://shaders/vignette/nightmare_vignette.gdshader")

	const 2dPerspectiveShader: Shader = preload("res://shaders/perspective/2d_perspective.gdshader")

class Images:
	const PixelViewportDrawingImage: CompressedTexture2D = preload("res://ui/debug_ui/pixel_viewport_drawing.svg")

	const AutoTypedTextImage: CompressedTexture2D = preload("res://ui/narrative/text/auto_typed_text.svg")

	const MouseParallaxImage: CompressedTexture2D = preload("res://ui/mouse/parallax/mouse_parallax.svg")

	const BoxTransparentImage: CompressedTexture2D = preload("res://ui/components/ninepatchrect/box_transparent.png")

	const ResizableNinepatchrectImage: CompressedTexture2D = preload("res://ui/components/ninepatchrect/resizable_ninepatchrect.svg")

	const 14Border02Image: CompressedTexture2D = preload("res://ui/menus/layouts/pixel_art/assets/14 Border 02.png")

	const PerformanceMetricsImage: CompressedTexture2D = preload("res://ui/performance/metrics/performance_metrics.svg")

	const ContentWarningImage: CompressedTexture2D = preload("res://ui/content_warning/content_warning.svg")

	const IconImage: CompressedTexture2D = preload("res://icon.svg")

	const TraumaDetectorImage: CompressedTexture2D = preload("res://components/camera/3D/shake/trauma_detector.svg")

	const CameraShake3dImage: CompressedTexture2D = preload("res://components/camera/3D/shake/camera_shake_3d.svg")

	const TraumaCauserImage: CompressedTexture2D = preload("res://components/camera/3D/shake/trauma_causer.svg")

	const FreeLookCameraImage: CompressedTexture2D = preload("res://components/camera/3D/free_look/free_look_camera.svg")

	const TraumaDetectorImage_1: CompressedTexture2D = preload("res://components/camera/2D/shake/trauma_detector.svg")

	const ShakeCamera2dImage: CompressedTexture2D = preload("res://components/camera/2D/shake/shake_camera_2d.svg")

	const TraumaCauserImage_1: CompressedTexture2D = preload("res://components/camera/2D/shake/trauma_causer.svg")

	const TxSmokeImage: CompressedTexture2D = preload("res://components/motion/3D/first_person/weapons/bullets/impacts/textures/smoke/TX_Smoke.png")

	const BulletHoleBasicImage: CompressedTexture2D = preload("res://components/motion/3D/first_person/weapons/bullets/decals/holes/bullet_hole_basic.png")

	const BloodHitImage: CompressedTexture2D = preload("res://components/motion/3D/first_person/weapons/bullets/decals/holes/blood/blood_hit.png")

	const BloodHitNormalMapImage: CompressedTexture2D = preload("res://components/motion/3D/first_person/weapons/bullets/decals/holes/blood/blood_hit_normal_map.png")

	const BulletHoleMetalImage: CompressedTexture2D = preload("res://components/motion/3D/first_person/weapons/bullets/decals/holes/bullet_hole_metal.png")

	const BulletHolesAtlasImage: CompressedTexture2D = preload("res://components/motion/3D/first_person/weapons/bullets/decals/holes/bullet_holes_atlas.png")

	const BulletHoleOrmImage: CompressedTexture2D = preload("res://components/motion/3D/first_person/weapons/bullets/decals/holes/black/bullet_hole_orm.png")

	const BulletHoleEmitImage: CompressedTexture2D = preload("res://components/motion/3D/first_person/weapons/bullets/decals/holes/black/bullet_hole_emit.png")

	const BulletHoleNormalImage: CompressedTexture2D = preload("res://components/motion/3D/first_person/weapons/bullets/decals/holes/black/bullet_hole_normal.png")

	const BulletHoleBlackImage: CompressedTexture2D = preload("res://components/motion/3D/first_person/weapons/bullets/decals/holes/black/bullet_hole_black.png")

	const WeaponHolderImage: CompressedTexture2D = preload("res://components/motion/3D/first_person/weapons/icons/weapon_holder.svg")

	const BulletImage: CompressedTexture2D = preload("res://components/motion/3D/first_person/weapons/icons/bullet.svg")

	const WeaponMotionImage: CompressedTexture2D = preload("res://components/motion/3D/first_person/weapons/icons/weapon_motion.svg")

	const WeaponImage: CompressedTexture2D = preload("res://components/motion/3D/first_person/weapons/icons/weapon.svg")

	const MuzzleGunfire2Image: CompressedTexture2D = preload("res://components/motion/3D/first_person/weapons/muzzle/textures/muzzle_gunfire_2.png")

	const MuzzleGunfire3Image: CompressedTexture2D = preload("res://components/motion/3D/first_person/weapons/muzzle/textures/muzzle_gunfire_3.png")

	const MuzzleGunfire4Image: CompressedTexture2D = preload("res://components/motion/3D/first_person/weapons/muzzle/textures/muzzle_gunfire_4.png")

	const Flash1Image: CompressedTexture2D = preload("res://components/motion/3D/first_person/weapons/muzzle/textures/flash1.png")

	const MuzzleBlastImage: CompressedTexture2D = preload("res://components/motion/3D/first_person/weapons/muzzle/textures/muzzle_blast.png")

	const MuzzleFlashTextureImage: CompressedTexture2D = preload("res://components/motion/3D/first_person/weapons/muzzle/textures/muzzle_flash_texture.png")

	const Flash4Image: CompressedTexture2D = preload("res://components/motion/3D/first_person/weapons/muzzle/textures/flash4.png")

	const MuzzleGunfireImage: CompressedTexture2D = preload("res://components/motion/3D/first_person/weapons/muzzle/textures/muzzle_gunfire.png")

	const WhiteImage: CompressedTexture2D = preload("res://components/motion/3D/first_person/weapons/muzzle/textures/white.png")

	const FootstepManager3dImage: CompressedTexture2D = preload("res://components/motion/3D/first_person/footsteps/footstep_manager_3d.svg")

	const DungeonControllerImage: CompressedTexture2D = preload("res://components/motion/3D/dungeon_crawler/dungeon_controller.svg")

	const DungeonMovementImage: CompressedTexture2D = preload("res://components/motion/3D/dungeon_crawler/dungeon_movement.svg")

	const HitboxImage: CompressedTexture2D = preload("res://components/collisions/hitbox_hurtbox/hitbox.svg")

	const HurtboxImage: CompressedTexture2D = preload("res://components/collisions/hitbox_hurtbox/hurtbox.svg")

	const GhostImage: CompressedTexture2D = preload("res://components/vfx/2D/ghost_trail/ghost.svg")

	const Pop-effectImage: CompressedTexture2D = preload("res://components/vfx/2D/pop_effect/pop-effect.svg")

	const ShockwaveImage: CompressedTexture2D = preload("res://components/vfx/2D/shockwave/shockwave.svg")

	const DayImage: CompressedTexture2D = preload("res://components/environment/day_night_cycle/sky_panoramas/panoramas/day.png")

	const ClearSkyImage: CompressedTexture2D = preload("res://components/environment/day_night_cycle/sky_panoramas/panoramas/clear_sky.png")

	const StarsBigImage: CompressedTexture2D = preload("res://components/environment/day_night_cycle/sky_panoramas/panoramas/stars_big.png")

	const DuskImage: CompressedTexture2D = preload("res://components/environment/day_night_cycle/sky_panoramas/panoramas/dusk.png")

	const DawnImage: CompressedTexture2D = preload("res://components/environment/day_night_cycle/sky_panoramas/panoramas/dawn.png")

	const OvercastImage: CompressedTexture2D = preload("res://components/environment/day_night_cycle/sky_panoramas/panoramas/overcast.png")

	const VisualHint3dImage: CompressedTexture2D = preload("res://components/interaction/3D/visuals/visual_hint_3d.svg")

	const RandomLightEnergyImage: CompressedTexture2D = preload("res://components/interaction/3D/lights/random_light_energy.svg")

	const SwitchableLightsImage: CompressedTexture2D = preload("res://components/interaction/3D/lights/switchable_lights.svg")

	const Interactable2dImage: CompressedTexture2D = preload("res://components/interaction/2D/interactables/interactable_2d.svg")

	const Interactor2dImage: CompressedTexture2D = preload("res://components/interaction/2D/interactors/interactor_2d.svg")

	const Ah-ui-pointerImage: CompressedTexture2D = preload("res://shaders/vhs/camera-frame-ui/ah-ui-POINTER.png")

	const DotImage: CompressedTexture2D = preload("res://shaders/vhs/camera-frame-ui/dot.png")

	const Ah-ui-next-rightImage: CompressedTexture2D = preload("res://shaders/vhs/camera-frame-ui/ah-ui-next-right.png")

	const Spr-playMaskImage: CompressedTexture2D = preload("res://shaders/vhs/camera-frame-ui/SPR-PlayMask.png")

	const Ah-ui-rec-letteringImage: CompressedTexture2D = preload("res://shaders/vhs/camera-frame-ui/ah-ui-REC-LETTERING.png")

	const Ah-ui-rec-symbolImage: CompressedTexture2D = preload("res://shaders/vhs/camera-frame-ui/ah-ui-REC-SYMBOL.png")

	const Ah-ui-lineImage: CompressedTexture2D = preload("res://shaders/vhs/camera-frame-ui/ah-ui-LINE.png")

	const Ah-ui-next-leftImage: CompressedTexture2D = preload("res://shaders/vhs/camera-frame-ui/ah-ui-next-left.png")

	const ContinueIconImage: CompressedTexture2D = preload("res://shaders/vhs/camera-frame-ui/ContinueIcon.png")

	const DynamicCrosshairImage: CompressedTexture2D = preload("res://autoload/screen/dynamic_crosshair.svg")

	const HudImage: CompressedTexture2D = preload("res://assets/textures/hud.png")

	const PausemenuImage: CompressedTexture2D = preload("res://assets/textures/pausemenu.png")

	const EnemyImage: CompressedTexture2D = preload("res://assets/textures/enemy.png")

	const TitleImage: CompressedTexture2D = preload("res://assets/textures/title.png")

	const DialogueBoxImage: CompressedTexture2D = preload("res://assets/textures/dialogue_box.png")

	const Pump4Image: CompressedTexture2D = preload("res://assets/textures/Backgroundanim/pump4.jpg")

	const Smoke8Image: CompressedTexture2D = preload("res://assets/textures/Backgroundanim/smoke8.jpg")

	const Redlight1Image: CompressedTexture2D = preload("res://assets/textures/Backgroundanim/redlight1.jpg")

	const Smoke9Image: CompressedTexture2D = preload("res://assets/textures/Backgroundanim/smoke9.jpg")

	const Redlight3Image: CompressedTexture2D = preload("res://assets/textures/Backgroundanim/redlight3.jpg")

	const Redlight2Image: CompressedTexture2D = preload("res://assets/textures/Backgroundanim/redlight2.jpg")

	const Pump2Image: CompressedTexture2D = preload("res://assets/textures/Backgroundanim/pump2.jpg")

	const Pump3Image: CompressedTexture2D = preload("res://assets/textures/Backgroundanim/pump3.jpg")

	const Pump1Image: CompressedTexture2D = preload("res://assets/textures/Backgroundanim/pump1.jpg")

	const 2Redlight1Image: CompressedTexture2D = preload("res://assets/textures/Backgroundanim/2redlight1.jpg")

	const IdleImage: CompressedTexture2D = preload("res://assets/textures/Backgroundanim/idle.jpg")

	const Littlepump1Image: CompressedTexture2D = preload("res://assets/textures/Backgroundanim/littlepump1.jpg")

	const 2Redlight2Image: CompressedTexture2D = preload("res://assets/textures/Backgroundanim/2redlight2.jpg")

	const Littlepump3Image: CompressedTexture2D = preload("res://assets/textures/Backgroundanim/littlepump3.jpg")

	const Littlepump2Image: CompressedTexture2D = preload("res://assets/textures/Backgroundanim/littlepump2.jpg")

	const 2Redlight3Image: CompressedTexture2D = preload("res://assets/textures/Backgroundanim/2redlight3.jpg")

	const Smoke10Image: CompressedTexture2D = preload("res://assets/textures/Backgroundanim/smoke10.jpg")

	const 2Redlight4Image: CompressedTexture2D = preload("res://assets/textures/Backgroundanim/2redlight4.jpg")

	const Littlepump4Image: CompressedTexture2D = preload("res://assets/textures/Backgroundanim/littlepump4.jpg")

	const 2Redlight5Image: CompressedTexture2D = preload("res://assets/textures/Backgroundanim/2redlight5.jpg")

	const Light1Image: CompressedTexture2D = preload("res://assets/textures/Backgroundanim/light1.jpg")

	const Smoke1Image: CompressedTexture2D = preload("res://assets/textures/Backgroundanim/smoke1.jpg")

	const Smoke2Image: CompressedTexture2D = preload("res://assets/textures/Backgroundanim/smoke2.jpg")

	const Smoke3Image: CompressedTexture2D = preload("res://assets/textures/Backgroundanim/smoke3.jpg")

	const Smoke7Image: CompressedTexture2D = preload("res://assets/textures/Backgroundanim/smoke7.jpg")

	const Smoke6Image: CompressedTexture2D = preload("res://assets/textures/Backgroundanim/smoke6.jpg")

	const Smoke4Image: CompressedTexture2D = preload("res://assets/textures/Backgroundanim/smoke4.jpg")

	const Smoke5Image: CompressedTexture2D = preload("res://assets/textures/Backgroundanim/smoke5.jpg")

	const BluelightImage: CompressedTexture2D = preload("res://assets/textures/bluelight.png")

	const InventoryImage: CompressedTexture2D = preload("res://assets/textures/inventory.png")

	const BackroungblurrImage: CompressedTexture2D = preload("res://assets/textures/backroungblurr.jpg")

	const LabelImage: CompressedTexture2D = preload("res://assets/textures/label.png")

	const BattlesceneImage: CompressedTexture2D = preload("res://assets/textures/battlescene.png")

	const CircleImage: CompressedTexture2D = preload("res://assets/textures/circle.png")

	const SlotImage: CompressedTexture2D = preload("res://assets/textures/slot.png")

	const ArrowImage: CompressedTexture2D = preload("res://assets/textures/arrow.png")

	const HealImage: CompressedTexture2D = preload("res://assets/textures/heal.png")

	const SlotemptyImage: CompressedTexture2D = preload("res://assets/textures/slotempty.png")

	const BackgroundImage: CompressedTexture2D = preload("res://assets/textures/background.jpg")

	const HeartImage: CompressedTexture2D = preload("res://assets/textures/heart.png")

	const LightImage: CompressedTexture2D = preload("res://assets/textures/light.png")

	const Backgroundblurr2Image: CompressedTexture2D = preload("res://assets/textures/backgroundblurr2.jpg")

	const SlotselectedImage: CompressedTexture2D = preload("res://assets/textures/slotselected.png")

	const Panel9Image: CompressedTexture2D = preload("res://assets/textures/panel9.png")

	const AttacksceneImage: CompressedTexture2D = preload("res://assets/textures/attackscene.jpg")

	const GroundImage: CompressedTexture2D = preload("res://assets/textures/ground.jpg")

	const SelecticonImage: CompressedTexture2D = preload("res://assets/textures/selecticon.png")

	const BackgroundblurrImage: CompressedTexture2D = preload("res://assets/textures/backgroundblurr.jpg")

	const QuestionmarkImage: CompressedTexture2D = preload("res://assets/textures/questionmark.png")

	const BattleImage: CompressedTexture2D = preload("res://assets/textures/battle.jpg")

	const EImage: CompressedTexture2D = preload("res://assets/textures/E.png")

	const RedlightImage: CompressedTexture2D = preload("res://assets/textures/redlight.png")

	const PlayerImage: CompressedTexture2D = preload("res://assets/textures/player.png")

	const BloodVial4Image: CompressedTexture2D = preload("res://assets/3d/blood_vial_4.png")

	const IndustrialExteriorV2CoolingTowerImage: CompressedTexture2D = preload("res://assets/3d/Industrial_exterior_v2_Cooling_tower.png")

	const DoublePipeStraight0Image: CompressedTexture2D = preload("res://assets/3d/double_pipe_straight_0.png")

	const RetroLight-OldcleanModel3Image: CompressedTexture2D = preload("res://assets/3d/retro_light_-_oldclean_model_3.png")

	const IndustrialExteriorV2Cargo1Image: CompressedTexture2D = preload("res://assets/3d/Industrial_exterior_v2_Cargo_1.png")

	const IndustrialExteriorV2BoxWoodImage: CompressedTexture2D = preload("res://assets/3d/Industrial_exterior_v2_Box_wood.png")

	const PipeMetalicMetal-38Mb-3Part0Image: CompressedTexture2D = preload("res://assets/3d/pipe_metalic_metal_-38_mb_-_3part_0.png")

	const PipePieces2Image: CompressedTexture2D = preload("res://assets/3d/pipe_pieces_2.png")

	const PipePieces3Image: CompressedTexture2D = preload("res://assets/3d/pipe_pieces_3.png")

	const PipeMetalicMetal-38Mb-3Part1Image: CompressedTexture2D = preload("res://assets/3d/pipe_metalic_metal_-38_mb_-_3part_1.png")

	const IndustrialExteriorV2MetalCabinet1Image: CompressedTexture2D = preload("res://assets/3d/Industrial_exterior_v2_Metal_cabinet_1.png")

	const RetroLight-OldcleanModel2Image: CompressedTexture2D = preload("res://assets/3d/retro_light_-_oldclean_model_2.png")

	const DoublePipeStraight1Image: CompressedTexture2D = preload("res://assets/3d/double_pipe_straight_1.png")

	const CapsuleLow-polyGameReady2Image: CompressedTexture2D = preload("res://assets/3d/capsule_low-poly_game_ready_2.png")

	const Curtain-emergency-injection-hospital-14Mb2Image: CompressedTexture2D = preload("res://assets/3d/curtain_-emergency_-injection_-hospital_-_14mb_2.png")

	const BloodVial5Image: CompressedTexture2D = preload("res://assets/3d/blood_vial_5.png")

	const Curtain-emergency-injection-hospital-14Mb0Image: CompressedTexture2D = preload("res://assets/3d/curtain_-emergency_-injection_-hospital_-_14mb_0.png")

	const WornOverleadLight5Image: CompressedTexture2D = preload("res://assets/3d/worn_overlead_light_5.png")

	const BloodVial7Image: CompressedTexture2D = preload("res://assets/3d/blood_vial_7.png")

	const IndustrialExteriorV2RoadblockImage: CompressedTexture2D = preload("res://assets/3d/Industrial_exterior_v2_Roadblock.png")

	const CapsuleLow-polyGameReady0Image: CompressedTexture2D = preload("res://assets/3d/capsule_low-poly_game_ready_0.jpg")

	const RetroLight-OldcleanModel0Image: CompressedTexture2D = preload("res://assets/3d/retro_light_-_oldclean_model_0.png")

	const IndustrialExteriorV2Cargo2Image: CompressedTexture2D = preload("res://assets/3d/Industrial_exterior_v2_Cargo_2.png")

	const PipeMetalicMetal-38Mb-3Part3Image: CompressedTexture2D = preload("res://assets/3d/pipe_metalic_metal_-38_mb_-_3part_3.png")

	const ReWheelchairHorrorGameHospital0Image: CompressedTexture2D = preload("res://assets/3d/re_wheelchair_horror_game_hospital_0.png")

	const PipePieces1Image: CompressedTexture2D = preload("res://assets/3d/pipe_pieces_1.png")

	const PipePieces0Image: CompressedTexture2D = preload("res://assets/3d/pipe_pieces_0.png")

	const IndustrialExteriorV2GeneratorImage: CompressedTexture2D = preload("res://assets/3d/Industrial_exterior_v2_Generator.png")

	const ReWheelchairHorrorGameHospital1Image: CompressedTexture2D = preload("res://assets/3d/re_wheelchair_horror_game_hospital_1.png")

	const PipeMetalicMetal-38Mb-3Part2Image: CompressedTexture2D = preload("res://assets/3d/pipe_metalic_metal_-38_mb_-_3part_2.png")

	const IndustrialExteriorV2MetalCabinet2Image: CompressedTexture2D = preload("res://assets/3d/Industrial_exterior_v2_Metal_cabinet_2.png")

	const RetroLight-OldcleanModel1Image: CompressedTexture2D = preload("res://assets/3d/retro_light_-_oldclean_model_1.png")

	const DoublePipeStraight2Image: CompressedTexture2D = preload("res://assets/3d/double_pipe_straight_2.png")

	const CrutchAndIvDrip8Image: CompressedTexture2D = preload("res://assets/3d/crutch_and_iv_drip_8.png")

	const BloodVial6Image: CompressedTexture2D = preload("res://assets/3d/blood_vial_6.jpg")

	const CapsuleLow-polyGameReady1Image: CompressedTexture2D = preload("res://assets/3d/capsule_low-poly_game_ready_1.png")

	const Curtain-emergency-injection-hospital-14Mb1Image: CompressedTexture2D = preload("res://assets/3d/curtain_-emergency_-injection_-hospital_-_14mb_1.png")

	const WornOverleadLight4Image: CompressedTexture2D = preload("res://assets/3d/worn_overlead_light_4.png")

	const BloodVial2Image: CompressedTexture2D = preload("res://assets/3d/blood_vial_2.jpg")

	const WornOverleadLight0Image: CompressedTexture2D = preload("res://assets/3d/worn_overlead_light_0.jpg")

	const RetroLight-OldcleanModel5Image: CompressedTexture2D = preload("res://assets/3d/retro_light_-_oldclean_model_5.png")

	const RetroLight-OldcleanModel11Image: CompressedTexture2D = preload("res://assets/3d/retro_light_-_oldclean_model_11.png")

	const PipeMetalicMetal-38Mb-3Part6Image: CompressedTexture2D = preload("res://assets/3d/pipe_metalic_metal_-38_mb_-_3part_6.png")

	const AaronCapsule0Image: CompressedTexture2D = preload("res://assets/3d/aaron_capsule_0.png")

	const IndustrialExteriorV2ConcreteImage: CompressedTexture2D = preload("res://assets/3d/Industrial_exterior_v2_Concrete.png")

	const HospitalTrolley2Image: CompressedTexture2D = preload("res://assets/3d/hospital_trolley_2.png")

	const AaronCapsule1Image: CompressedTexture2D = preload("res://assets/3d/aaron_capsule_1.png")

	const PipeMetalicMetal-38Mb-3Part7Image: CompressedTexture2D = preload("res://assets/3d/pipe_metalic_metal_-38_mb_-_3part_7.png")

	const RetroLight-OldcleanModel10Image: CompressedTexture2D = preload("res://assets/3d/retro_light_-_oldclean_model_10.png")

	const RetroLight-OldcleanModel4Image: CompressedTexture2D = preload("res://assets/3d/retro_light_-_oldclean_model_4.png")

	const BloodVial3Image: CompressedTexture2D = preload("res://assets/3d/blood_vial_3.png")

	const WornOverleadLight1Image: CompressedTexture2D = preload("res://assets/3d/worn_overlead_light_1.png")

	const BloodVial1Image: CompressedTexture2D = preload("res://assets/3d/blood_vial_1.png")

	const WornOverleadLight3Image: CompressedTexture2D = preload("res://assets/3d/worn_overlead_light_3.jpg")

	const IndustrialExteriorV2Cargo4Image: CompressedTexture2D = preload("res://assets/3d/Industrial_exterior_v2_Cargo_4.png")

	const RetroLight-OldcleanModel6Image: CompressedTexture2D = preload("res://assets/3d/retro_light_-_oldclean_model_6.png")

	const PipeMetalicMetal-38Mb-3Part5Image: CompressedTexture2D = preload("res://assets/3d/pipe_metalic_metal_-38_mb_-_3part_5.png")

	const HospitalTrolley1Image: CompressedTexture2D = preload("res://assets/3d/hospital_trolley_1.png")

	const AaronCapsule3Image: CompressedTexture2D = preload("res://assets/3d/aaron_capsule_3.png")

	const AaronCapsule2Image: CompressedTexture2D = preload("res://assets/3d/aaron_capsule_2.png")

	const HospitalTrolley0Image: CompressedTexture2D = preload("res://assets/3d/hospital_trolley_0.png")

	const PipeMetalicMetal-38Mb-3Part4Image: CompressedTexture2D = preload("res://assets/3d/pipe_metalic_metal_-38_mb_-_3part_4.png")

	const RetroLight-OldcleanModel7Image: CompressedTexture2D = preload("res://assets/3d/retro_light_-_oldclean_model_7.png")

	const WornOverleadLight2Image: CompressedTexture2D = preload("res://assets/3d/worn_overlead_light_2.png")

	const BloodVial0Image: CompressedTexture2D = preload("res://assets/3d/blood_vial_0.png")

	const IvStand1Image: CompressedTexture2D = preload("res://assets/3d/iv_stand_1.png")

	const RustyPipeSegment1Image: CompressedTexture2D = preload("res://assets/3d/rusty_pipe_segment_1.png")

	const Bed2Image: CompressedTexture2D = preload("res://assets/3d/bed_2.png")

	const IndustrialExteriorV2LiquidReservoir1Image: CompressedTexture2D = preload("res://assets/3d/Industrial_exterior_v2_Liquid_reservoir_1.png")

	const Sci-fiCapsule2Image: CompressedTexture2D = preload("res://assets/3d/sci-fi_capsule_2.png")

	const Sci-fiCapsule3Image: CompressedTexture2D = preload("res://assets/3d/sci-fi_capsule_3.png")

	const Bed3Image: CompressedTexture2D = preload("res://assets/3d/bed_3.jpg")

	const RustyPipeSegment0Image: CompressedTexture2D = preload("res://assets/3d/rusty_pipe_segment_0.png")

	const IvStand0Image: CompressedTexture2D = preload("res://assets/3d/iv_stand_0.png")

	const IvStand2Image: CompressedTexture2D = preload("res://assets/3d/iv_stand_2.png")

	const RustyPipeSegment2Image: CompressedTexture2D = preload("res://assets/3d/rusty_pipe_segment_2.png")

	const Bed1Image: CompressedTexture2D = preload("res://assets/3d/bed_1.png")

	const IndustrialExteriorV2LiquidReservoir2Image: CompressedTexture2D = preload("res://assets/3d/Industrial_exterior_v2_Liquid_reservoir_2.png")

	const Sci-fiCapsule1Image: CompressedTexture2D = preload("res://assets/3d/sci-fi_capsule_1.png")

	const Bed0Image: CompressedTexture2D = preload("res://assets/3d/bed_0.jpg")

	const Sci-fiCapsule0Image: CompressedTexture2D = preload("res://assets/3d/sci-fi_capsule_0.png")

	const IndustrialExteriorV2WallImage: CompressedTexture2D = preload("res://assets/3d/Industrial_exterior_v2_Wall.png")

	const Bed4Image: CompressedTexture2D = preload("res://assets/3d/bed_4.png")

	const ChimneyMetalPipe1Image: CompressedTexture2D = preload("res://assets/3d/chimney_metal_pipe_1.png")

	const Re-animatorSyringe1Image: CompressedTexture2D = preload("res://assets/3d/re-animator_syringe_1.png")

	const Sci-fiCapsule4Image: CompressedTexture2D = preload("res://assets/3d/sci-fi_capsule_4.png")

	const Sci-fiCapsule5Image: CompressedTexture2D = preload("res://assets/3d/sci-fi_capsule_5.png")

	const Re-animatorSyringe0Image: CompressedTexture2D = preload("res://assets/3d/re-animator_syringe_0.png")

	const ChimneyMetalPipe0Image: CompressedTexture2D = preload("res://assets/3d/chimney_metal_pipe_0.png")

	const Bed5Image: CompressedTexture2D = preload("res://assets/3d/bed_5.png")

	const ChimneyMetalPipe2Image: CompressedTexture2D = preload("res://assets/3d/chimney_metal_pipe_2.png")

	const Re-animatorSyringe2Image: CompressedTexture2D = preload("res://assets/3d/re-animator_syringe_2.png")

	const Sci-fiCapsule7Image: CompressedTexture2D = preload("res://assets/3d/sci-fi_capsule_7.png")

	const Sci-fiCapsule6Image: CompressedTexture2D = preload("res://assets/3d/sci-fi_capsule_6.png")

	const IndustrialExteriorV2BagsImage: CompressedTexture2D = preload("res://assets/3d/Industrial_exterior_v2_Bags.png")

	const Re-animatorSyringe3Image: CompressedTexture2D = preload("res://assets/3d/re-animator_syringe_3.png")

	const PipeMetalicMetal-14Mb2Image: CompressedTexture2D = preload("res://assets/3d/pipe_metalic_metal_-_14mb_2.png")

	const IndustrialExteriorV2Building1Image: CompressedTexture2D = preload("res://assets/3d/Industrial_exterior_v2_Building_1.png")

	const WheelchairHorrorGameHospital1Image: CompressedTexture2D = preload("res://assets/3d/wheelchair_horror_game_hospital_1.png")

	const Pipe2Image: CompressedTexture2D = preload("res://assets/3d/pipe_2.png")

	const IndustrialExteriorV2Ventilation2Image: CompressedTexture2D = preload("res://assets/3d/Industrial_exterior_v2_Ventilation_2.png")

	const IndustrialExteriorV2Asphalt1-4Image: CompressedTexture2D = preload("res://assets/3d/Industrial_exterior_v2_Asphalt_1-4.png")

	const OldStyleHospitalBed2Image: CompressedTexture2D = preload("res://assets/3d/old_style_hospital_bed_2.png")

	const WheelchairHorrorGameHospital0Image: CompressedTexture2D = preload("res://assets/3d/wheelchair_horror_game_hospital_0.png")

	const PipeMetalicMetal-14Mb1Image: CompressedTexture2D = preload("res://assets/3d/pipe_metalic_metal_-_14mb_1.png")

	const IndustrialExteriorV2Building2Image: CompressedTexture2D = preload("res://assets/3d/Industrial_exterior_v2_Building_2.png")

	const WheelchairHorrorGameHospital2Image: CompressedTexture2D = preload("res://assets/3d/wheelchair_horror_game_hospital_2.png")

	const OldStyleHospitalBed0Image: CompressedTexture2D = preload("res://assets/3d/old_style_hospital_bed_0.png")

	const PsxStyleChainFence0Image: CompressedTexture2D = preload("res://assets/3d/psx_style_chain_fence_0.png")

	const Pipe1Image: CompressedTexture2D = preload("res://assets/3d/pipe_1.png")

	const IndustrialExteriorV2Ventilation1Image: CompressedTexture2D = preload("res://assets/3d/Industrial_exterior_v2_Ventilation_1.png")

	const Pipe0Image: CompressedTexture2D = preload("res://assets/3d/pipe_0.png")

	const PsxStyleChainFence1Image: CompressedTexture2D = preload("res://assets/3d/psx_style_chain_fence_1.png")

	const OldStyleHospitalBed1Image: CompressedTexture2D = preload("res://assets/3d/old_style_hospital_bed_1.png")

	const IndustrialExteriorV2Building3Image: CompressedTexture2D = preload("res://assets/3d/Industrial_exterior_v2_Building_3.png")

	const PipeMetalicMetal-14Mb0Image: CompressedTexture2D = preload("res://assets/3d/pipe_metalic_metal_-_14mb_0.png")

	const IndustrialExteriorV2Building7Image: CompressedTexture2D = preload("res://assets/3d/Industrial_exterior_v2_Building_7.png")

	const IndustrialExteriorV2FenceImage: CompressedTexture2D = preload("res://assets/3d/Industrial_exterior_v2_Fence.png")

	const IndustrialExteriorV2Barrel1Image: CompressedTexture2D = preload("res://assets/3d/Industrial_exterior_v2_Barrel_1.png")

	const IndustrialExteriorV2RoadImage: CompressedTexture2D = preload("res://assets/3d/Industrial_exterior_v2_Road.png")

	const IndustrialExteriorV2Building6Image: CompressedTexture2D = preload("res://assets/3d/Industrial_exterior_v2_Building_6.png")

	const Ps1HorrorHospitalGurney0Image: CompressedTexture2D = preload("res://assets/3d/ps1_horror_hospital_gurney_0.png")

	const IndustrialExteriorV2Building4Image: CompressedTexture2D = preload("res://assets/3d/Industrial_exterior_v2_Building_4.png")

	const IndustrialExteriorV2Barrel2Image: CompressedTexture2D = preload("res://assets/3d/Industrial_exterior_v2_Barrel_2.png")

	const IndustrialExteriorV2Barrel3Image: CompressedTexture2D = preload("res://assets/3d/Industrial_exterior_v2_Barrel_3.png")

	const IndustrialExteriorV2Building5Image: CompressedTexture2D = preload("res://assets/3d/Industrial_exterior_v2_Building_5.png")

	const IndustrialExteriorV2PipesImage: CompressedTexture2D = preload("res://assets/3d/Industrial_exterior_v2_Pipes.png")

	const CrutchAndIvDrip3Image: CompressedTexture2D = preload("res://assets/3d/crutch_and_iv_drip_3.png")

	const PipeMetalicMetal-38Mb-3Part8Image: CompressedTexture2D = preload("res://assets/3d/pipe_metalic_metal_-38_mb_-_3part_8.png")

	const CrutchAndIvDrip2Image: CompressedTexture2D = preload("res://assets/3d/crutch_and_iv_drip_2.png")

	const CrutchAndIvDrip0Image: CompressedTexture2D = preload("res://assets/3d/crutch_and_iv_drip_0.png")

	const RetroLight-OldcleanModel9Image: CompressedTexture2D = preload("res://assets/3d/retro_light_-_oldclean_model_9.png")

	const RetroLight-OldcleanModel8Image: CompressedTexture2D = preload("res://assets/3d/retro_light_-_oldclean_model_8.png")

	const CrutchAndIvDrip1Image: CompressedTexture2D = preload("res://assets/3d/crutch_and_iv_drip_1.png")

	const HospitalBed2Image: CompressedTexture2D = preload("res://assets/3d/hospital_bed_2.jpg")

	const CrutchAndIvDrip5Image: CompressedTexture2D = preload("res://assets/3d/crutch_and_iv_drip_5.png")

	const IndustrialExteriorV2Building13Image: CompressedTexture2D = preload("res://assets/3d/Industrial_exterior_v2_Building_13.png")

	const StylizedPipeSet2Image: CompressedTexture2D = preload("res://assets/3d/stylized_pipe_set_2.png")

	const CrutchAndIvDrip4Image: CompressedTexture2D = preload("res://assets/3d/crutch_and_iv_drip_4.png")

	const StylizedPipeSet0Image: CompressedTexture2D = preload("res://assets/3d/stylized_pipe_set_0.jpg")

	const HospitalBed1Image: CompressedTexture2D = preload("res://assets/3d/hospital_bed_1.png")

	const CrutchAndIvDrip6Image: CompressedTexture2D = preload("res://assets/3d/crutch_and_iv_drip_6.png")

	const FreeEldritchHorrorInspiredCreature0Image: CompressedTexture2D = preload("res://assets/3d/free_eldritch_horror_inspired_creature_0.jpg")

	const IndustrialExteriorV2PaletImage: CompressedTexture2D = preload("res://assets/3d/Industrial_exterior_v2_Palet.png")

	const StylizedPipeSet1Image: CompressedTexture2D = preload("res://assets/3d/stylized_pipe_set_1.png")

	const CrutchAndIvDrip7Image: CompressedTexture2D = preload("res://assets/3d/crutch_and_iv_drip_7.png")

	const HospitalBed0Image: CompressedTexture2D = preload("res://assets/3d/hospital_bed_0.jpg")

	const IndustrialExteriorV2BridgesImage: CompressedTexture2D = preload("res://assets/3d/Industrial_exterior_v2_Bridges.png")

	const LogoSelectedImage: CompressedTexture2D = preload("res://assets/social/logos/logo_selected.png")

	const TwitterImage: CompressedTexture2D = preload("res://assets/social/logos/twitter.png")

	const DiscordImage: CompressedTexture2D = preload("res://assets/social/logos/discord.png")

	const YoutubeImage: CompressedTexture2D = preload("res://assets/social/logos/youtube.png")

	const ArtstationImage: CompressedTexture2D = preload("res://assets/social/logos/artstation.png")

	const LightCookieImage: CompressedTexture2D = preload("res://assets/light_cookies/3D/light_cookie.png")

	const LightCookie3Image: CompressedTexture2D = preload("res://assets/light_cookies/3D/light_cookie_3.png")

	const LightCookie2Image: CompressedTexture2D = preload("res://assets/light_cookies/3D/light_cookie_2.png")

	const LightCookie6Image: CompressedTexture2D = preload("res://assets/light_cookies/3D/light_cookie_6.png")

	const LightCookie7Image: CompressedTexture2D = preload("res://assets/light_cookies/3D/light_cookie_7.png")

	const LightCookie5Image: CompressedTexture2D = preload("res://assets/light_cookies/3D/light_cookie_5.png")

	const LightCookie4Image: CompressedTexture2D = preload("res://assets/light_cookies/3D/light_cookie_4.png")

	const Circle04Image: CompressedTexture2D = preload("res://assets/geometry/shapes/circles/circle_04.png")

	const Circle05Image: CompressedTexture2D = preload("res://assets/geometry/shapes/circles/circle_05.png")

	const Big-circleImage: CompressedTexture2D = preload("res://assets/geometry/shapes/circles/big-circle.png")

	const Circle02Image: CompressedTexture2D = preload("res://assets/geometry/shapes/circles/circle_02.png")

	const Circle03Image: CompressedTexture2D = preload("res://assets/geometry/shapes/circles/circle_03.png")

	const CircleIndicatorImage: CompressedTexture2D = preload("res://assets/geometry/shapes/circles/circle_indicator.png")

	const Circle01Image: CompressedTexture2D = preload("res://assets/geometry/shapes/circles/circle_01.png")

	const CircleGlowImage: CompressedTexture2D = preload("res://assets/geometry/shapes/circles/circle_glow.png")

	const CircunferenceImage: CompressedTexture2D = preload("res://assets/geometry/shapes/circles/circunference.png")

	const Dashed-circleImage: CompressedTexture2D = preload("res://assets/geometry/shapes/circles/dashed-circle.png")

	const Circle9648Image: CompressedTexture2D = preload("res://assets/geometry/shapes/circles/pixel/circle_96_48.png")

	const Circle-16-fullImage: CompressedTexture2D = preload("res://assets/geometry/shapes/circles/pixel/circle-16-full.png")

	const Circle-8-emptyImage: CompressedTexture2D = preload("res://assets/geometry/shapes/circles/pixel/circle-8-empty.png")

	const Circle6432Image: CompressedTexture2D = preload("res://assets/geometry/shapes/circles/pixel/circle_64_32.png")

	const Circle64SmoothImage: CompressedTexture2D = preload("res://assets/geometry/shapes/circles/pixel/circle64smooth.png")

	const Cross-normal-xsImage: CompressedTexture2D = preload("res://assets/geometry/shapes/circles/pixel/cross-normal-XS.png")

	const Circle64322Image: CompressedTexture2D = preload("res://assets/geometry/shapes/circles/pixel/circle_64_32_2.png")

	const Circle64Image: CompressedTexture2D = preload("res://assets/geometry/shapes/circles/pixel/circle64.png")

	const Circle-4-fullImage: CompressedTexture2D = preload("res://assets/geometry/shapes/circles/pixel/circle-4-full.png")

	const Circle-16-emptyImage: CompressedTexture2D = preload("res://assets/geometry/shapes/circles/pixel/circle-16-empty.png")

	const Circle-8-fullImage: CompressedTexture2D = preload("res://assets/geometry/shapes/circles/pixel/circle-8-full.png")

	const Circle512Image: CompressedTexture2D = preload("res://assets/geometry/shapes/circles/pixel/circle512.png")

	const Circle19296Image: CompressedTexture2D = preload("res://assets/geometry/shapes/circles/pixel/circle_192_96.png")

	const Circle-inner-pointImage: CompressedTexture2D = preload("res://assets/geometry/shapes/circles/circle-inner-point.png")

	const CircleShadowImage: CompressedTexture2D = preload("res://assets/geometry/shapes/circles/circle_shadow.png")

	const Cross-squareImage: CompressedTexture2D = preload("res://assets/geometry/shapes/square/cross-square.png")

	const Glow-squareImage: CompressedTexture2D = preload("res://assets/geometry/shapes/square/glow-square.png")

	const XgridwonkyImage: CompressedTexture2D = preload("res://assets/geometry/shapes/square/xgridwonky.png")

	const XgridImage: CompressedTexture2D = preload("res://assets/geometry/shapes/square/xgrid.png")

	const SquareIndicatorImage: CompressedTexture2D = preload("res://assets/geometry/shapes/square/square_indicator.png")

	const RhombusImage: CompressedTexture2D = preload("res://assets/geometry/shapes/square/rhombus.png")

	const Square-8-emptyImage: CompressedTexture2D = preload("res://assets/geometry/shapes/square/pixel/square-8-empty.png")

	const Square-16-fullImage: CompressedTexture2D = preload("res://assets/geometry/shapes/square/pixel/square-16-full.png")

	const Square-16-emptyImage: CompressedTexture2D = preload("res://assets/geometry/shapes/square/pixel/square-16-empty.png")

	const Square-4-emptyImage: CompressedTexture2D = preload("res://assets/geometry/shapes/square/pixel/square-4-empty.png")

	const Square-4-fullImage: CompressedTexture2D = preload("res://assets/geometry/shapes/square/pixel/square-4-full.png")

	const Square-8-fullImage: CompressedTexture2D = preload("res://assets/geometry/shapes/square/pixel/square-8-full.png")

	const Big-squareImage: CompressedTexture2D = preload("res://assets/geometry/shapes/square/big-square.png")

	const DiamondImage: CompressedTexture2D = preload("res://assets/geometry/shapes/square/diamond.png")

	const BoxImage: CompressedTexture2D = preload("res://assets/geometry/shapes/square/box.png")

	const Half-triangleImage: CompressedTexture2D = preload("res://assets/geometry/shapes/triangle/half-triangle.png")

	const Double-triangleImage: CompressedTexture2D = preload("res://assets/geometry/shapes/triangle/double-triangle.png")

	const Triangle-8-emptyImage: CompressedTexture2D = preload("res://assets/geometry/shapes/triangle/pixel/triangle-8-empty.png")

	const Triangle-16-fullImage: CompressedTexture2D = preload("res://assets/geometry/shapes/triangle/pixel/triangle-16-full.png")

	const Triangle-4-emptyImage: CompressedTexture2D = preload("res://assets/geometry/shapes/triangle/pixel/triangle-4-empty.png")

	const Triangle-16-emptyImage: CompressedTexture2D = preload("res://assets/geometry/shapes/triangle/pixel/triangle-16-empty.png")

	const Triangle-8-fullImage: CompressedTexture2D = preload("res://assets/geometry/shapes/triangle/pixel/triangle-8-full.png")

	const Triangle-4-fullImage: CompressedTexture2D = preload("res://assets/geometry/shapes/triangle/pixel/triangle-4-full.png")

	const Glow-corner-triangleImage: CompressedTexture2D = preload("res://assets/geometry/shapes/triangle/glow-corner-triangle.png")

	const Octagon-normal-xsImage: CompressedTexture2D = preload("res://assets/geometry/shapes/octagon/pixel/octagon-normal-XS.png")

	const Octagon-opened-lImage: CompressedTexture2D = preload("res://assets/geometry/shapes/octagon/pixel/octagon-opened-L.png")

	const Octagon-normal-sImage: CompressedTexture2D = preload("res://assets/geometry/shapes/octagon/pixel/octagon-normal-S.png")

	const Octagon-blurred-mImage: CompressedTexture2D = preload("res://assets/geometry/shapes/octagon/pixel/octagon-blurred-M.png")

	const Octagon-blurred-lImage: CompressedTexture2D = preload("res://assets/geometry/shapes/octagon/pixel/octagon-blurred-L.png")

	const Octagon-normal-mImage: CompressedTexture2D = preload("res://assets/geometry/shapes/octagon/pixel/octagon-normal-M.png")

	const Octagon-normal-lImage: CompressedTexture2D = preload("res://assets/geometry/shapes/octagon/pixel/octagon-normal-L.png")

	const Octagon-blurred-sImage: CompressedTexture2D = preload("res://assets/geometry/shapes/octagon/pixel/octagon-blurred-S.png")

	const Octagon-blurred-xsImage: CompressedTexture2D = preload("res://assets/geometry/shapes/octagon/pixel/octagon-blurred-XS.png")

	const Octagon-outline-lImage: CompressedTexture2D = preload("res://assets/geometry/shapes/octagon/pixel/octagon-outline-L.png")

	const MediumRightImage: CompressedTexture2D = preload("res://assets/geometry/arrows/medium_right.png")

	const Long-down-arrowImage: CompressedTexture2D = preload("res://assets/geometry/arrows/long-down-arrow.png")

	const Medium-downImage: CompressedTexture2D = preload("res://assets/geometry/arrows/medium-down.png")

	const MediumUpImage: CompressedTexture2D = preload("res://assets/geometry/arrows/medium_up.png")

	const Triangle-arrowImage: CompressedTexture2D = preload("res://assets/geometry/arrows/triangle-arrow.png")

	const Head-arrowImage: CompressedTexture2D = preload("res://assets/geometry/arrows/head-arrow.png")

	const Right-arrowImage: CompressedTexture2D = preload("res://assets/geometry/arrows/right-arrow.png")

	const MediumLeftImage: CompressedTexture2D = preload("res://assets/geometry/arrows/medium_left.png")

	const Long-up-arrowImage: CompressedTexture2D = preload("res://assets/geometry/arrows/long-up-arrow.png")

	const Mirror-arrowImage: CompressedTexture2D = preload("res://assets/geometry/arrows/mirror-arrow.png")

	const DebrisImage: CompressedTexture2D = preload("res://assets/geometry/arrows/debris.png")

	const RabbitImage: CompressedTexture2D = preload("res://assets/characters/rabbit.png")

	const LittlesisterImage: CompressedTexture2D = preload("res://assets/characters/littlesister.png")

	const CélineImage: CompressedTexture2D = preload("res://assets/characters/céline.png")

	const PlayerbattleImage: CompressedTexture2D = preload("res://assets/characters/playerbattle.png")

	const PetscopPlayerImage: CompressedTexture2D = preload("res://assets/characters/petscop_player.png")

	const YajekoriaImage: CompressedTexture2D = preload("res://assets/characters/yajekoria.png")

	const PlayerImage_1: CompressedTexture2D = preload("res://assets/characters/Player.png")

	const Leander-sampleImage: CompressedTexture2D = preload("res://assets/fonts/Leander-Sample.png")

class Audios:
	const EnddialogueAudio: AudioStreamMP3 = preload("res://assets/Audio/SE/enddialogue.mp3")

	const 794475WatermelondreamsWretch-sfx-lowAudio: AudioStreamWAV = preload("res://assets/Audio/SE/794475__watermelondreams__wretch-sfx-low.wav")

	const AieAudio: AudioStreamOggVorbis = preload("res://assets/Audio/SE/aie.ogg")

	const 213042Taira-komoriHiccupAudio: AudioStreamMP3 = preload("res://assets/Audio/SE/213042__taira-komori__hiccup.mp3")

	const FootstepsAudio: AudioStreamMP3 = preload("res://assets/Audio/SE/footsteps.mp3")

	const 744321FairsonicstudioBbrsSfxMenubackpageAudio: AudioStreamWAV = preload("res://assets/Audio/SE/744321__fairsonicstudio__bbrs_sfx_menubackpage.wav")

	const 745496HarrisonlaceMetallicUiSelectionAudio: AudioStreamWAV = preload("res://assets/Audio/SE/745496__harrisonlace__metallic_ui_selection.wav")

	const 571579ElBossMetallic-game-menu-ping-variation-2Audio: AudioStreamWAV = preload("res://assets/Audio/SE/571579__el_boss__metallic-game-menu-ping-variation-2.wav")

	const 671892SanderboahMenu-soundsAudio: AudioStreamWAV = preload("res://assets/Audio/SE/671892__sanderboah__menu-sounds.wav")

	const EndDialogueAudio: AudioStreamWAV = preload("res://assets/Audio/SE/end_dialogue.wav")

	const Spawn1Audio: AudioStreamWAV = preload("res://assets/Audio/SE/spawn1.wav")

	const 213446Taira-komoriPackunEatingAudio: AudioStreamMP3 = preload("res://assets/Audio/SE/213446__taira-komori__packun_eating.mp3")

	const Spawn2Audio: AudioStreamWAV = preload("res://assets/Audio/SE/spawn2.wav")

	const 198448Cs279Menu-scroll-selection-soundAudio: AudioStreamWAV = preload("res://assets/Audio/SE/198448__cs279__menu-scroll-selection-sound.wav")

	const Footsteps(mp3CutNet)Audio: AudioStreamMP3 = preload("res://assets/Audio/SE/footsteps (mp3cut.net).mp3")

	const 427870Lavacoal123Mechanical-menu-button-pressAudio: AudioStreamWAV = preload("res://assets/Audio/SE/427870__lavacoal123__mechanical-menu-button-press.wav")

	const 211742Taira-komoriJump08Audio: AudioStreamMP3 = preload("res://assets/Audio/SE/211742__taira-komori__jump08.mp3")

	const 150214PumodiMenu-move-2Audio: AudioStreamMP3 = preload("res://assets/Audio/SE/150214__pumodi__menu-move-2.mp3")

	const 540478BrevicepsMetallic-file-selectAudio: AudioStreamWAV = preload("res://assets/Audio/SE/540478__breviceps__metallic-file-select.wav")

	const EndDialogueAudio_1: AudioStreamMP3 = preload("res://assets/Audio/SE/end_dialogue.mp3")

	const PianoChopinPreludeOpus28No4Audio: AudioStreamMP3 = preload("res://assets/Audio/songs/Piano Chopin Prelude Opus 28 no. 4.mp3")

	const AquaAudio: AudioStreamMP3 = preload("res://assets/Audio/songs/aqua.mp3")

	const BattleAudio: AudioStreamMP3 = preload("res://assets/Audio/songs/battle.mp3")

	const MenuAudio: AudioStreamMP3 = preload("res://assets/Audio/songs/menu.mp3")

	const Juggernaut(ps1)Ost-Forest-EyesOfMemory-NinasGramophoneAudio: AudioStreamMP3 = preload("res://assets/Audio/songs/Juggernaut (PS1) OST - Forest - Eyes of Memory - Ninas Gramophone.mp3")

	const AttackAudio: AudioStreamMP3 = preload("res://assets/Audio/songs/Attack.mp3")

	const Juggernaut(ps1)Ost-Cyberspace-InsuranceInvestigation-MrNAtasAudio: AudioStreamMP3 = preload("res://assets/Audio/songs/Juggernaut (PS1) OST - Cyberspace - Insurance Investigation - Mr. N. Atas.mp3")

	const 789771Dan2008Calm-menu-music-loopable-bitcrushedAudio: AudioStreamWAV = preload("res://assets/Audio/songs/789771__dan2008__calm-menu-music-loopable-bitcrushed.wav")

	const OpelucidCity(white)(20091221)-PokémonBlack&White(beta)MusicAudio: AudioStreamMP3 = preload("res://assets/Audio/songs/Opelucid City (White) (20091221) - Pokémon Black & White (Beta) Music.mp3")

	const WorldAudio: AudioStreamMP3 = preload("res://assets/Audio/songs/World.mp3")

	const RudeBusterAudio: AudioStreamMP3 = preload("res://assets/Audio/songs/Rude Buster.mp3")

class Fonts:
	const Ark-pixel-10Px-monospaced-latinFont: Fonts = preload("res://ui/menus/layouts/pixel_art/theme/fonts/ark_pixel/ark-pixel-10px-monospaced-latin.otf")

	const Essays1743-boldFont: Fonts = preload("res://assets/fonts/Essays1743-Bold.ttf")

	const BaketvalleyOldFaceFont: Fonts = preload("res://assets/fonts/baketvalley_old_face.ttf")

	const Essays1743-italicFont: Fonts = preload("res://assets/fonts/Essays1743-Italic.ttf")

	const AntiqueBookFont: Fonts = preload("res://assets/fonts/Antique Book.ttf")

	const RomanAntiqueFont: Fonts = preload("res://assets/fonts/RomanAntique.ttf")

	const HappyBirthday-regularFont: Fonts = preload("res://assets/fonts/HappyBirthday-Regular.ttf")

	const Essays1743-boldItalicFont: Fonts = preload("res://assets/fonts/Essays1743-BoldItalic.ttf")

	const LeanderFont: Fonts = preload("res://assets/fonts/Leander.ttf")

	const Drunkfonts-regularFont: Fonts = preload("res://assets/fonts/DRUNKFONTS-Regular.otf")

	const RomanAntique-italicFont: Fonts = preload("res://assets/fonts/RomanAntique-Italic.ttf")

	const Essays1743Font: Fonts = preload("res://assets/fonts/Essays1743.ttf")

	const ShakespeareFirstFolioFontFont: Fonts = preload("res://assets/fonts/Shakespeare First Folio Font.otf")

	const HultogEngravedFont: Fonts = preload("res://assets/fonts/Hultog Engraved.ttf")

