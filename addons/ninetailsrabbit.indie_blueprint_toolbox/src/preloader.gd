class_name IndieBlueprintPreloader

class Scenes:
	const GlobalEffectsScene: PackedScene = preload("res://autoload/effects/global_effects.tscn")

	const DynamicScreenPointerScene: PackedScene = preload("res://autoload/screen/dynamic_screen_pointer.tscn")

	const DungeonControllerScene: PackedScene = preload("res://components/motion/3D/dungeon_crawler/dungeon_controller.tscn")

	const FirstPersonControllerScene: PackedScene = preload("res://components/motion/3D/first_person/first_person_controller.tscn")

	const BulletHoleMetalScene: PackedScene = preload("res://components/motion/3D/first_person/weapons/bullets/decals/scenes/bullet_hole_metal.tscn")

	const BulletHoleNormalScene: PackedScene = preload("res://components/motion/3D/first_person/weapons/bullets/decals/scenes/bullet_hole_normal.tscn")

	const BulletHoleOrganicBloodScene: PackedScene = preload("res://components/motion/3D/first_person/weapons/bullets/decals/scenes/bullet_hole_organic_blood.tscn")

	const BulletHoleShinyScene: PackedScene = preload("res://components/motion/3D/first_person/weapons/bullets/decals/scenes/bullet_hole_shiny.tscn")

	const BulletImpactManagerScene: PackedScene = preload("res://components/motion/3D/first_person/weapons/bullets/impacts/bullet_impact_manager.tscn")

	const BulletBloodImpactScene: PackedScene = preload("res://components/motion/3D/first_person/weapons/bullets/impacts/scenes/bullet_blood_impact.tscn")

	const BulletImpactSmokeScene: PackedScene = preload("res://components/motion/3D/first_person/weapons/bullets/impacts/scenes/bullet_impact_smoke.tscn")

	const BulletTraceScene: PackedScene = preload("res://components/motion/3D/first_person/weapons/bullets/traces/bullet_trace.tscn")

	const MuzzleFlashScene: PackedScene = preload("res://components/motion/3D/first_person/weapons/muzzle/emitter/muzzle_flash.tscn")

	const ThirdPersonControllerScene: PackedScene = preload("res://components/motion/3D/third_person/click_mode/third_person_controller.tscn")

	const ThirdPersonControllerScene_1: PackedScene = preload("res://components/motion/3D/third_person/third_person_controller.tscn")

	const PopScene: PackedScene = preload("res://components/vfx/2D/pop_effect/pop.tscn")

	const PopCircleEffectSpawnerScene: PackedScene = preload("res://components/vfx/2D/pop_effect/pop_circle_effect_spawner.tscn")

	const ShockwaveScene: PackedScene = preload("res://components/vfx/2D/shockwave/shockwave.tscn")

	const ControlScene: PackedScene = preload("res://control.tscn")

	const Game-entryPointScene: PackedScene = preload("res://scenes/entry_point/game-entry_point.tscn")

	const NpcScene: PackedScene = preload("res://scenes/world/npc.tscn")

	const WorldScene: PackedScene = preload("res://scenes/world/world.tscn")

	const ResizableBoxRectScene: PackedScene = preload("res://ui/components/ninepatchrect/resizable_box_rect.tscn")

	const ContentWarningDisplayerScene: PackedScene = preload("res://ui/content_warning/content_warning_displayer.tscn")

	const InputActionKeybindingScene: PackedScene = preload("res://ui/menus/components/panel/input_action_keybinding.tscn")

	const InputRemapPanelScene: PackedScene = preload("res://ui/menus/components/panel/input_remap_panel.tscn")

	const MenuDisplayPanelScene: PackedScene = preload("res://ui/menus/layouts/pixel_art/components/menu_display_panel.tscn")

	const WorldSaveSlotPanelScene: PackedScene = preload("res://ui/menus/layouts/pixel_art/components/world_save_slot_panel.tscn")

	const MainMenuScene: PackedScene = preload("res://ui/menus/layouts/pixel_art/main_menu.tscn")

	const NewSaveScreenScene: PackedScene = preload("res://ui/menus/layouts/pixel_art/new_save_screen.tscn")

	const PauseMenuScene: PackedScene = preload("res://ui/menus/layouts/pixel_art/pause_menu.tscn")

	const AccessibilityMenuScene: PackedScene = preload("res://ui/menus/layouts/pixel_art/settings/accessibility_menu.tscn")

	const AudioSettingsMenuScene: PackedScene = preload("res://ui/menus/layouts/pixel_art/settings/audio_settings_menu.tscn")

	const ControlSettingsMenuScene: PackedScene = preload("res://ui/menus/layouts/pixel_art/settings/control_settings_menu.tscn")

	const DisplaySettingsMenuScene: PackedScene = preload("res://ui/menus/layouts/pixel_art/settings/display_settings_menu.tscn")

	const SettingsMenuScene: PackedScene = preload("res://ui/menus/layouts/pixel_art/settings/settings_menu.tscn")

	const SharedAudioPLayerScene: PackedScene = preload("res://ui/menus/layouts/pixel_art/SharedAudioPLayer.tscn")

	const WorldSelectionScene: PackedScene = preload("res://ui/menus/layouts/pixel_art/world_selection.tscn")

	const SettingsMenuScene_1: PackedScene = preload("res://ui/menus/layouts/settings/tabs/settings_menu.tscn")

	const MainMenuScene_1: PackedScene = preload("res://ui/menus/layouts/simple/main_menu.tscn")

	const PerformanceMetricsScene: PackedScene = preload("res://ui/performance/metrics/performance_metrics.tscn")

class Scripts:
	const Preloader = preload("res://autoload/content/preloader.gd")

	const GlobalEffects = preload("res://autoload/effects/global_effects.gd")

	const GamepadControllerManager = preload("res://autoload/gamepad/gamepad_controller_manager.gd")

	const GameGlobals = preload("res://autoload/general/game_globals.gd")

	const GlobalGameEvents = preload("res://autoload/general/global_game_events.gd")

	const GameSettings = preload("res://autoload/persistence/settings/game_settings.gd")

	const InputControls = preload("res://autoload/persistence/settings/input_controls.gd")

	const SettingsManager = preload("res://autoload/persistence/settings/settings_manager.gd")

	const CursorManager = preload("res://autoload/screen/cursor_manager.gd")

	const DynamicScreenPointer = preload("res://autoload/screen/dynamic_screen_pointer.gd")

	const DynamicScreenPointerCanvasLayer = preload("res://autoload/screen/dynamic_screen_pointer_canvas_layer.gd")

	const ShakeCamera2d = preload("res://components/camera/2D/shake/shake_camera_2d.gd")

	const TraumaCauser2d = preload("res://components/camera/2D/shake/trauma_causer_2d.gd")

	const TraumaDetector2d = preload("res://components/camera/2D/shake/trauma_detector_2d.gd")

	const AerialCamera = preload("res://components/camera/3D/aerial/aerial_camera.gd")

	const FreeLookCamera3d = preload("res://components/camera/3D/free_look/free_look_camera_3d.gd")

	const CameraShake3d = preload("res://components/camera/3D/shake/camera_shake_3d.gd")

	const TraumaCauser3d = preload("res://components/camera/3D/shake/trauma_causer_3d.gd")

	const TraumaDetector3d = preload("res://components/camera/3D/shake/trauma_detector_3d.gd")

	const Hitbox2d = preload("res://components/collisions/hitbox_hurtbox/hitbox_2d.gd")

	const Hitbox3d = preload("res://components/collisions/hitbox_hurtbox/hitbox_3d.gd")

	const Hurtbox2d = preload("res://components/collisions/hitbox_hurtbox/hurtbox_2d.gd")

	const Hurtbox3d = preload("res://components/collisions/hitbox_hurtbox/hurtbox_3d.gd")

	const DayNightCycle = preload("res://components/environment/day_night_cycle/day_night_cycle.gd")

	const DynamicDirectionalLight = preload("res://components/environment/dynamic_directional_light.gd")

	const DynamicWorldEnvironment = preload("res://components/environment/dynamic_world_environment.gd")

	const Interactable2d = preload("res://components/interaction/2D/interactables/interactable_2d.gd")

	const AreaInteractor2d = preload("res://components/interaction/2D/interactors/area_interactor_2d.gd")

	const RandomLightEnergy3d = preload("res://components/interaction/3D/lights/random_light_energy_3d.gd")

	const SwitchableLight3d = preload("res://components/interaction/3D/lights/switchable_light_3d.gd")

	const VisualHint3d = preload("res://components/interaction/3D/visuals/visual_hint_3d.gd")

	const DungeonController = preload("res://components/motion/3D/dungeon_crawler/dungeon_controller.gd")

	const DungeonGridMovement = preload("res://components/motion/3D/dungeon_crawler/dungeon_grid_movement.gd")

	const CameraController = preload("res://components/motion/3D/first_person/camera/camera_controller.gd")

	const FirstPersonController = preload("res://components/motion/3D/first_person/first_person_controller.gd")

	const FootstepManager3d = preload("res://components/motion/3D/first_person/footsteps/footstep_manager_3d.gd")

	const FootstepSound = preload("res://components/motion/3D/first_person/footsteps/footstep_sound.gd")

	const Air = preload("res://components/motion/3D/first_person/states/air/air.gd")

	const Fall = preload("res://components/motion/3D/first_person/states/air/fall.gd")

	const Jump = preload("res://components/motion/3D/first_person/states/air/jump.gd")

	const Crawl = preload("res://components/motion/3D/first_person/states/ground/crawl.gd")

	const Crouch = preload("res://components/motion/3D/first_person/states/ground/crouch.gd")

	const Dash = preload("res://components/motion/3D/first_person/states/ground/dash.gd")

	const Ground = preload("res://components/motion/3D/first_person/states/ground/ground.gd")

	const Idle = preload("res://components/motion/3D/first_person/states/ground/idle.gd")

	const Run = preload("res://components/motion/3D/first_person/states/ground/run.gd")

	const Slide = preload("res://components/motion/3D/first_person/states/ground/slide.gd")

	const Walk = preload("res://components/motion/3D/first_person/states/ground/walk.gd")

	const RunToWalkTransition = preload("res://components/motion/3D/first_person/states/transitions/run_to_walk_transition.gd")

	const WalkToRunTransition = preload("res://components/motion/3D/first_person/states/transitions/walk_to_run_transition.gd")

	const Bullet = preload("res://components/motion/3D/first_person/weapons/bullets/bullet.gd")

	const BulletTraceManager = preload("res://components/motion/3D/first_person/weapons/bullets/bullet_trace_manager.gd")

	const BulletImpact = preload("res://components/motion/3D/first_person/weapons/bullets/impacts/bullet_impact.gd")

	const BulletImpactManager = preload("res://components/motion/3D/first_person/weapons/bullets/impacts/bullet_impact_manager.gd")

	const BulletTrace = preload("res://components/motion/3D/first_person/weapons/bullets/traces/bullet_trace.gd")

	const FirearmWeaponAmmo = preload("res://components/motion/3D/first_person/weapons/configuration/firearm_weapon_ammo.gd")

	const FirearmWeaponBullet = preload("res://components/motion/3D/first_person/weapons/configuration/firearm_weapon_bullet.gd")

	const FirearmWeaponConfiguration = preload("res://components/motion/3D/first_person/weapons/configuration/firearm_weapon_configuration.gd")

	const FirearmWeaponFire = preload("res://components/motion/3D/first_person/weapons/configuration/firearm_weapon_fire.gd")

	const FirearmWeaponMotionConfiguration = preload("res://components/motion/3D/first_person/weapons/configuration/firearm_weapon_motion_configuration.gd")

	const WeaponsDatabase = preload("res://components/motion/3D/first_person/weapons/database/weapons_database.gd")

	const FirearmWeapon = preload("res://components/motion/3D/first_person/weapons/firearm_weapon.gd")

	const FirearmWeaponManager = preload("res://components/motion/3D/first_person/weapons/firearm_weapon_manager.gd")

	const Bob = preload("res://components/motion/3D/first_person/weapons/motion/bob.gd")

	const FirearmWeaponMotion = preload("res://components/motion/3D/first_person/weapons/motion/firearm_weapon_motion.gd")

	const Impulse = preload("res://components/motion/3D/first_person/weapons/motion/impulse.gd")

	const Recoil = preload("res://components/motion/3D/first_person/weapons/motion/recoil.gd")

	const Sway = preload("res://components/motion/3D/first_person/weapons/motion/sway.gd")

	const Tilt = preload("res://components/motion/3D/first_person/weapons/motion/tilt.gd")

	const MuzzleFlash = preload("res://components/motion/3D/first_person/weapons/muzzle/emitter/muzzle_flash.gd")

	const WeaponHand = preload("res://components/motion/3D/first_person/weapons/weapon_hand.gd")

	const WeaponMesh = preload("res://components/motion/3D/first_person/weapons/weapon_mesh.gd")

	const BaseState = preload("res://components/motion/3D/third_person/click_mode/states/base_state.gd")

	const MovementState = preload("res://components/motion/3D/third_person/click_mode/states/movement_state.gd")

	const NeutralState = preload("res://components/motion/3D/third_person/click_mode/states/neutral_state.gd")

	const ProjectilePreditionState = preload("res://components/motion/3D/third_person/click_mode/states/projectile_predition_state.gd")

	const Transition = preload("res://components/motion/3D/third_person/click_mode/states/transitions/transition.gd")

	const FogVolume_1 = preload("res://components/motion/3D/third_person/fog_volume.gd")

	const SpringArmPivot = preload("res://components/motion/3D/third_person/spring_arm_pivot.gd")

	const ThirdPersonController = preload("res://components/motion/3D/third_person/third_person_controller.gd")

	const GhostTrailEffect = preload("res://components/vfx/2D/ghost_trail/ghost_trail_effect.gd")

	const Pop = preload("res://components/vfx/2D/pop_effect/pop.gd")

	const PopCircleSpawner = preload("res://components/vfx/2D/pop_effect/pop_circle_spawner.gd")

	const Shockwave = preload("res://components/vfx/2D/shockwave/shockwave.gd")

	const Control_1 = preload("res://control.gd")

	const Fssfsdgf = preload("res://fssfsdgf.gd")

	const TranslationKeys = preload("res://localization/translation_keys.gd")

	const GameEntryPoint = preload("res://scenes/entry_point/game_entry_point.gd")

	const Camera3d = preload("res://scenes/world/camera_3d.gd")

	const ResizableNinepatchrect = preload("res://ui/components/ninepatchrect/resizable_ninepatchrect.gd")

	const ContentWarning = preload("res://ui/content_warning/advisors/content_warning.gd")

	const ContentWarningDisplayer = preload("res://ui/content_warning/content_warning_displayer.gd")

	const Pixel-viewport-draw = preload("res://ui/debug_ui/pixel-viewport-draw.gd")

	const AllowTelemetryCheckbox = preload("res://ui/menus/components/checkbox/allow_telemetry_checkbox.gd")

	const IntegerScalingCheckbox = preload("res://ui/menus/components/checkbox/integer_scaling_checkbox.gd")

	const InvertedMouseCheckbox = preload("res://ui/menus/components/checkbox/inverted_mouse_checkbox.gd")

	const MutedAudioCheckButton = preload("res://ui/menus/components/checkbox/muted_audio_check_button.gd")

	const MuteAudioCheckbox = preload("res://ui/menus/components/checkbox/mute_audio_checkbox.gd")

	const PhotosensitiveCheckbox = preload("res://ui/menus/components/checkbox/photosensitive_checkbox.gd")

	const ScreenshakeCheckbox = preload("res://ui/menus/components/checkbox/screenshake_checkbox.gd")

	const ScreenBorderlessCheckbox = preload("res://ui/menus/components/checkbox/screen_borderless_checkbox.gd")

	const VsyncCheckbox = preload("res://ui/menus/components/checkbox/vsync_checkbox.gd")

	const FpsLimitHboxContainer = preload("res://ui/menus/components/hbox/fps_limit_hbox_container.gd")

	const GraphicsQualityPresetHboxContainer = preload("res://ui/menus/components/hbox/graphics_quality_preset_hbox_container.gd")

	const ProjectVersion = preload("res://ui/menus/components/label/project_version.gd")

	const LanguageSelectorOptionButton = preload("res://ui/menus/components/option_button/language_selector_option_button.gd")

	const MonitorSelectorOptionButton = preload("res://ui/menus/components/option_button/monitor_selector_option_button.gd")

	const Scale3dModeOptionButton = preload("res://ui/menus/components/option_button/scale_3d_mode_option_button.gd")

	const ScreenModeOptionButton = preload("res://ui/menus/components/option_button/screen_mode_option_button.gd")

	const ScreenResolutionsOptionButton = preload("res://ui/menus/components/option_button/screen_resolutions_option_button.gd")

	const InputActionKeybinding = preload("res://ui/menus/components/panel/input_action_keybinding.gd")

	const InputRemapPanel = preload("res://ui/menus/components/panel/input_remap_panel.gd")

	const AudioSlider = preload("res://ui/menus/components/slider/audio_slider.gd")

	const CameraFovSlider = preload("res://ui/menus/components/slider/camera_fov_slider.gd")

	const ControllerSensitivitySlider = preload("res://ui/menus/components/slider/controller_sensitivity_slider.gd")

	const MouseSensitivitySlider = preload("res://ui/menus/components/slider/mouse_sensitivity_slider.gd")

	const Scale3dSlider = preload("res://ui/menus/components/slider/scale_3d_slider.gd")

	const ScreenBrightnessSlider = preload("res://ui/menus/components/slider/screen_brightness_slider.gd")

	const ScreenContrastSlider = preload("res://ui/menus/components/slider/screen_contrast_slider.gd")

	const ScreenSaturationSlider = preload("res://ui/menus/components/slider/screen_saturation_slider.gd")

	const AudioStreamPlayer_1 = preload("res://ui/menus/layouts/pixel_art/audio_stream_player.gd")

	const AudioStreamPlayer2d = preload("res://ui/menus/layouts/pixel_art/audio_stream_player_2d.gd")

	const Button_1 = preload("res://ui/menus/layouts/pixel_art/button.gd")

	const MenuBackButton = preload("res://ui/menus/layouts/pixel_art/components/menu_back_button.gd")

	const WorldSaveSlotPanel = preload("res://ui/menus/layouts/pixel_art/components/world_save_slot_panel.gd")

	const MainMenu = preload("res://ui/menus/layouts/pixel_art/main_menu.gd")

	const NewSaveScreen = preload("res://ui/menus/layouts/pixel_art/new_save_screen.gd")

	const PauseMenu = preload("res://ui/menus/layouts/pixel_art/pause_menu.gd")

	const DisplaySettingsMenu = preload("res://ui/menus/layouts/pixel_art/settings/display_settings_menu.gd")

	const SettingsMenu = preload("res://ui/menus/layouts/pixel_art/settings/settings_menu.gd")

	const WorldSelection = preload("res://ui/menus/layouts/pixel_art/world_selection.gd")

	const SettingsMenu_1 = preload("res://ui/menus/layouts/settings/tabs/settings_menu.gd")

	const MainMenu_1 = preload("res://ui/menus/layouts/simple/main_menu.gd")

	const MouseParallax = preload("res://ui/mouse/parallax/mouse_parallax.gd")

	const AutoTypedText = preload("res://ui/narrative/text/auto_typed_text.gd")

	const ColorBlink = preload("res://ui/narrative/text/rich_text_effects/color_blink.gd")

	const HueShift = preload("res://ui/narrative/text/rich_text_effects/hue_shift.gd")

	const Wiggle = preload("res://ui/narrative/text/rich_text_effects/wiggle.gd")

	const PerformanceMetrics = preload("res://ui/performance/metrics/performance_metrics.gd")

class Resources:
	const MainFontResource: Resource = preload("res://assets/fonts/Font themes/Main_font.tres")

	const NewThemeResource: Resource = preload("res://assets/fonts/Font themes/new_theme.tres")

	const SimpleWaterResource: Resource = preload("res://assets/materials/water/simple/simple_water.tres")

	const NormalMoonColorGradientResource: Resource = preload("res://components/environment/day_night_cycle/moon_gradients/normal/normal_moon_color_gradient.tres")

	const NormalMoonIntensityCurveResource: Resource = preload("res://components/environment/day_night_cycle/moon_gradients/normal/normal_moon_intensity_curve.tres")

	const NormalSkyGroundGradientResource: Resource = preload("res://components/environment/day_night_cycle/sky_color_gradients/normal/normal_sky_ground_gradient.tres")

	const NormalSkyHorizonGradientResource: Resource = preload("res://components/environment/day_night_cycle/sky_color_gradients/normal/normal_sky_horizon_gradient.tres")

	const NormalSkyTopColorGradientResource: Resource = preload("res://components/environment/day_night_cycle/sky_color_gradients/normal/normal_sky_top_color_gradient.tres")

	const NormalSunColorGradientResource: Resource = preload("res://components/environment/day_night_cycle/sun_gradients/normal/normal_sun_color_gradient.tres")

	const NormalSunIntensityCurveResource: Resource = preload("res://components/environment/day_night_cycle/sun_gradients/normal/normal_sun_intensity_curve.tres")

	const NewSkyResource: Resource = preload("res://components/interaction/new_sky.tres")

	const BulletImpactResource: Resource = preload("res://components/motion/3D/first_person/weapons/bullets/impacts/bullet_impact.tres")

	const ImpactResource: Resource = preload("res://components/motion/3D/first_person/weapons/bullets/impacts/impact.tres")

	const MtImpactResource: Resource = preload("res://components/motion/3D/first_person/weapons/bullets/impacts/MT_Impact.tres")

	const BloodResource: Resource = preload("res://components/motion/3D/first_person/weapons/bullets/impacts/textures/blood/Blood.tres")

	const MtBloodResource: Resource = preload("res://components/motion/3D/first_person/weapons/bullets/impacts/textures/blood/MT_Blood.tres")

	const BulletTraceResource: Resource = preload("res://components/motion/3D/first_person/weapons/bullets/traces/bullet_trace.tres")

	const MuzzleFlashResource: Resource = preload("res://components/motion/3D/first_person/weapons/muzzle/emitter/muzzle_flash.tres")

	const MuzzleFlashBaseMaterialResource: Resource = preload("res://components/motion/3D/first_person/weapons/muzzle/emitter/muzzle_flash_base_material.tres")

	const DefaultBusLayoutResource: Resource = preload("res://default_bus_layout.tres")

	const ContentWarningHorrorElementsResource: Resource = preload("res://ui/content_warning/advisors/content_warning_horror_elements.tres")

	const ContentWarningMatureContentResource: Resource = preload("res://ui/content_warning/advisors/content_warning_mature_content.tres")

	const ContentWarningPhotosensitiveResource: Resource = preload("res://ui/content_warning/advisors/content_warning_photosensitive.tres")

	const ContentWarningResemblanceResource: Resource = preload("res://ui/content_warning/advisors/content_warning_resemblance.tres")

	const ContentWarningSuicideResource: Resource = preload("res://ui/content_warning/advisors/content_warning_suicide.tres")

	const NewThemeResource_1: Resource = preload("res://ui/menus/layouts/new_theme.tres")

	const MainmenuthemeResource: Resource = preload("res://ui/menus/layouts/pixel_art/mainmenutheme.tres")

	const ContentWarningSubtitleLabelResource: Resource = preload("res://ui/menus/layouts/pixel_art/theme/content_warning_subtitle_label.tres")

	const ContentWarningTitleLabelResource: Resource = preload("res://ui/menus/layouts/pixel_art/theme/content_warning_title_label.tres")

	const MenuSettingsLabelResource: Resource = preload("res://ui/menus/layouts/pixel_art/theme/label_configurations/menu_settings_label.tres")

	const UiPanelStyleboxFlatResource: Resource = preload("res://ui/menus/layouts/pixel_art/theme/ui_panel_stylebox_flat.tres")

	const UiPanelStyleboxFlatFocusedResource: Resource = preload("res://ui/menus/layouts/pixel_art/theme/ui_panel_stylebox_flat_focused.tres")

	const UiThemeResource: Resource = preload("res://ui/menus/layouts/pixel_art/theme/ui_theme.tres")

	const HardwareLabelSettingsResource: Resource = preload("res://ui/performance/metrics/hardware_label_settings.tres")

class Shaders:
	const SkyShader: Shader = preload("res://components/environment/day_night_cycle/sky_panoramas/sky.gdshader")

	const ThirdPersonControllerShader: Shader = preload("res://components/motion/3D/third_person/third_person_controller.gdshader")

	const PixelPerfectOutlineShader: Shader = preload("res://shaders/environment/pixel_perfect_outline.gdshader")

	const UnderwaterShader: Shader = preload("res://shaders/environment/underwater.gdshader")

	const 2dPerspectiveShader: Shader = preload("res://shaders/perspective/2d_perspective.gdshader")

	const BlinkShader: Shader = preload("res://shaders/textures/blink.gdshader")

	const ImageChunkLoadShader: Shader = preload("res://shaders/textures/image_chunk_load.gdshader")

	const InfiniteLoopingTextureShader: Shader = preload("res://shaders/textures/infinite_looping_texture.gdshader")

	const OilMoveShader: Shader = preload("res://shaders/textures/oil_move.gdshader")

	const TintWhitePixelsShader: Shader = preload("res://shaders/textures/tint_white_pixels.gdshader")

	const ScanlinesShader: Shader = preload("res://shaders/vhs/scanlines.gdshader")

	const VhsShader: Shader = preload("res://shaders/vhs/vhs.gdshader")

	const VhsSoftShader: Shader = preload("res://shaders/vhs/vhs_soft.gdshader")

	const ViewmodelShader: Shader = preload("res://shaders/viewmodel/viewmodel.gdshader")

	const BlurVignetteShader: Shader = preload("res://shaders/vignette/blur_vignette.gdshader")

	const NightmareVignetteShader: Shader = preload("res://shaders/vignette/nightmare_vignette.gdshader")

	const VignetteShader: Shader = preload("res://shaders/vignette/vignette.gdshader")

class Images:
	const PetscopPlayerImage: CompressedTexture2D = preload("res://assets/characters/petscop_player.png")

	const Leander-sampleImage: CompressedTexture2D = preload("res://assets/fonts/Leander-Sample.png")

	const DebrisImage: CompressedTexture2D = preload("res://assets/geometry/arrows/debris.png")

	const Head-arrowImage: CompressedTexture2D = preload("res://assets/geometry/arrows/head-arrow.png")

	const Long-down-arrowImage: CompressedTexture2D = preload("res://assets/geometry/arrows/long-down-arrow.png")

	const Long-up-arrowImage: CompressedTexture2D = preload("res://assets/geometry/arrows/long-up-arrow.png")

	const Medium-downImage: CompressedTexture2D = preload("res://assets/geometry/arrows/medium-down.png")

	const MediumLeftImage: CompressedTexture2D = preload("res://assets/geometry/arrows/medium_left.png")

	const MediumRightImage: CompressedTexture2D = preload("res://assets/geometry/arrows/medium_right.png")

	const MediumUpImage: CompressedTexture2D = preload("res://assets/geometry/arrows/medium_up.png")

	const Mirror-arrowImage: CompressedTexture2D = preload("res://assets/geometry/arrows/mirror-arrow.png")

	const Right-arrowImage: CompressedTexture2D = preload("res://assets/geometry/arrows/right-arrow.png")

	const Triangle-arrowImage: CompressedTexture2D = preload("res://assets/geometry/arrows/triangle-arrow.png")

	const Big-circleImage: CompressedTexture2D = preload("res://assets/geometry/shapes/circles/big-circle.png")

	const Circle-inner-pointImage: CompressedTexture2D = preload("res://assets/geometry/shapes/circles/circle-inner-point.png")

	const Circle01Image: CompressedTexture2D = preload("res://assets/geometry/shapes/circles/circle_01.png")

	const Circle02Image: CompressedTexture2D = preload("res://assets/geometry/shapes/circles/circle_02.png")

	const Circle03Image: CompressedTexture2D = preload("res://assets/geometry/shapes/circles/circle_03.png")

	const Circle04Image: CompressedTexture2D = preload("res://assets/geometry/shapes/circles/circle_04.png")

	const Circle05Image: CompressedTexture2D = preload("res://assets/geometry/shapes/circles/circle_05.png")

	const CircleGlowImage: CompressedTexture2D = preload("res://assets/geometry/shapes/circles/circle_glow.png")

	const CircleIndicatorImage: CompressedTexture2D = preload("res://assets/geometry/shapes/circles/circle_indicator.png")

	const CircleShadowImage: CompressedTexture2D = preload("res://assets/geometry/shapes/circles/circle_shadow.png")

	const CircunferenceImage: CompressedTexture2D = preload("res://assets/geometry/shapes/circles/circunference.png")

	const Dashed-circleImage: CompressedTexture2D = preload("res://assets/geometry/shapes/circles/dashed-circle.png")

	const Circle-16-emptyImage: CompressedTexture2D = preload("res://assets/geometry/shapes/circles/pixel/circle-16-empty.png")

	const Circle-16-fullImage: CompressedTexture2D = preload("res://assets/geometry/shapes/circles/pixel/circle-16-full.png")

	const Circle-4-fullImage: CompressedTexture2D = preload("res://assets/geometry/shapes/circles/pixel/circle-4-full.png")

	const Circle-8-emptyImage: CompressedTexture2D = preload("res://assets/geometry/shapes/circles/pixel/circle-8-empty.png")

	const Circle-8-fullImage: CompressedTexture2D = preload("res://assets/geometry/shapes/circles/pixel/circle-8-full.png")

	const Circle512Image: CompressedTexture2D = preload("res://assets/geometry/shapes/circles/pixel/circle512.png")

	const Circle64Image: CompressedTexture2D = preload("res://assets/geometry/shapes/circles/pixel/circle64.png")

	const Circle64SmoothImage: CompressedTexture2D = preload("res://assets/geometry/shapes/circles/pixel/circle64smooth.png")

	const Circle19296Image: CompressedTexture2D = preload("res://assets/geometry/shapes/circles/pixel/circle_192_96.png")

	const Circle6432Image: CompressedTexture2D = preload("res://assets/geometry/shapes/circles/pixel/circle_64_32.png")

	const Circle64322Image: CompressedTexture2D = preload("res://assets/geometry/shapes/circles/pixel/circle_64_32_2.png")

	const Circle9648Image: CompressedTexture2D = preload("res://assets/geometry/shapes/circles/pixel/circle_96_48.png")

	const Cross-normal-xsImage: CompressedTexture2D = preload("res://assets/geometry/shapes/circles/pixel/cross-normal-XS.png")

	const Octagon-blurred-lImage: CompressedTexture2D = preload("res://assets/geometry/shapes/octagon/pixel/octagon-blurred-L.png")

	const Octagon-blurred-mImage: CompressedTexture2D = preload("res://assets/geometry/shapes/octagon/pixel/octagon-blurred-M.png")

	const Octagon-blurred-sImage: CompressedTexture2D = preload("res://assets/geometry/shapes/octagon/pixel/octagon-blurred-S.png")

	const Octagon-blurred-xsImage: CompressedTexture2D = preload("res://assets/geometry/shapes/octagon/pixel/octagon-blurred-XS.png")

	const Octagon-normal-lImage: CompressedTexture2D = preload("res://assets/geometry/shapes/octagon/pixel/octagon-normal-L.png")

	const Octagon-normal-mImage: CompressedTexture2D = preload("res://assets/geometry/shapes/octagon/pixel/octagon-normal-M.png")

	const Octagon-normal-sImage: CompressedTexture2D = preload("res://assets/geometry/shapes/octagon/pixel/octagon-normal-S.png")

	const Octagon-normal-xsImage: CompressedTexture2D = preload("res://assets/geometry/shapes/octagon/pixel/octagon-normal-XS.png")

	const Octagon-opened-lImage: CompressedTexture2D = preload("res://assets/geometry/shapes/octagon/pixel/octagon-opened-L.png")

	const Octagon-outline-lImage: CompressedTexture2D = preload("res://assets/geometry/shapes/octagon/pixel/octagon-outline-L.png")

	const Big-squareImage: CompressedTexture2D = preload("res://assets/geometry/shapes/square/big-square.png")

	const BoxImage: CompressedTexture2D = preload("res://assets/geometry/shapes/square/box.png")

	const Cross-squareImage: CompressedTexture2D = preload("res://assets/geometry/shapes/square/cross-square.png")

	const DiamondImage: CompressedTexture2D = preload("res://assets/geometry/shapes/square/diamond.png")

	const Glow-squareImage: CompressedTexture2D = preload("res://assets/geometry/shapes/square/glow-square.png")

	const Square-16-emptyImage: CompressedTexture2D = preload("res://assets/geometry/shapes/square/pixel/square-16-empty.png")

	const Square-16-fullImage: CompressedTexture2D = preload("res://assets/geometry/shapes/square/pixel/square-16-full.png")

	const Square-4-emptyImage: CompressedTexture2D = preload("res://assets/geometry/shapes/square/pixel/square-4-empty.png")

	const Square-4-fullImage: CompressedTexture2D = preload("res://assets/geometry/shapes/square/pixel/square-4-full.png")

	const Square-8-emptyImage: CompressedTexture2D = preload("res://assets/geometry/shapes/square/pixel/square-8-empty.png")

	const Square-8-fullImage: CompressedTexture2D = preload("res://assets/geometry/shapes/square/pixel/square-8-full.png")

	const RhombusImage: CompressedTexture2D = preload("res://assets/geometry/shapes/square/rhombus.png")

	const SquareIndicatorImage: CompressedTexture2D = preload("res://assets/geometry/shapes/square/square_indicator.png")

	const XgridImage: CompressedTexture2D = preload("res://assets/geometry/shapes/square/xgrid.png")

	const XgridwonkyImage: CompressedTexture2D = preload("res://assets/geometry/shapes/square/xgridwonky.png")

	const Double-triangleImage: CompressedTexture2D = preload("res://assets/geometry/shapes/triangle/double-triangle.png")

	const Glow-corner-triangleImage: CompressedTexture2D = preload("res://assets/geometry/shapes/triangle/glow-corner-triangle.png")

	const Half-triangleImage: CompressedTexture2D = preload("res://assets/geometry/shapes/triangle/half-triangle.png")

	const Triangle-16-emptyImage: CompressedTexture2D = preload("res://assets/geometry/shapes/triangle/pixel/triangle-16-empty.png")

	const Triangle-16-fullImage: CompressedTexture2D = preload("res://assets/geometry/shapes/triangle/pixel/triangle-16-full.png")

	const Triangle-4-emptyImage: CompressedTexture2D = preload("res://assets/geometry/shapes/triangle/pixel/triangle-4-empty.png")

	const Triangle-4-fullImage: CompressedTexture2D = preload("res://assets/geometry/shapes/triangle/pixel/triangle-4-full.png")

	const Triangle-8-emptyImage: CompressedTexture2D = preload("res://assets/geometry/shapes/triangle/pixel/triangle-8-empty.png")

	const Triangle-8-fullImage: CompressedTexture2D = preload("res://assets/geometry/shapes/triangle/pixel/triangle-8-full.png")

	const LightCookieImage: CompressedTexture2D = preload("res://assets/light_cookies/3D/light_cookie.png")

	const LightCookie2Image: CompressedTexture2D = preload("res://assets/light_cookies/3D/light_cookie_2.png")

	const LightCookie3Image: CompressedTexture2D = preload("res://assets/light_cookies/3D/light_cookie_3.png")

	const LightCookie4Image: CompressedTexture2D = preload("res://assets/light_cookies/3D/light_cookie_4.png")

	const LightCookie5Image: CompressedTexture2D = preload("res://assets/light_cookies/3D/light_cookie_5.png")

	const LightCookie6Image: CompressedTexture2D = preload("res://assets/light_cookies/3D/light_cookie_6.png")

	const LightCookie7Image: CompressedTexture2D = preload("res://assets/light_cookies/3D/light_cookie_7.png")

	const ArtstationImage: CompressedTexture2D = preload("res://assets/social/logos/artstation.png")

	const DiscordImage: CompressedTexture2D = preload("res://assets/social/logos/discord.png")

	const LogoSelectedImage: CompressedTexture2D = preload("res://assets/social/logos/logo_selected.png")

	const TwitterImage: CompressedTexture2D = preload("res://assets/social/logos/twitter.png")

	const YoutubeImage: CompressedTexture2D = preload("res://assets/social/logos/youtube.png")

	const NjuUkGmImage: CompressedTexture2D = preload("res://assets/textures/NjuUkGM.png")

	const O0020002011355326524Image: CompressedTexture2D = preload("res://assets/textures/o0020002011355326524.gif")

	const Picsart25-04-2322-14-22-988Image: CompressedTexture2D = preload("res://assets/textures/Picsart_25-04-23_22-14-22-988.jpg")

	const Picsart25-04-2415-37-46-028Image: CompressedTexture2D = preload("res://assets/textures/Picsart_25-04-24_15-37-46-028.jpg")

	const Picsart25-04-2415-55-46-952Image: CompressedTexture2D = preload("res://assets/textures/Picsart_25-04-24_15-55-46-952.jpg")

	const Picsart25-04-2423-27-12-749Image: CompressedTexture2D = preload("res://assets/textures/Picsart_25-04-24_23-27-12-749.png")

	const Picsart25-04-2423-32-03-748Image: CompressedTexture2D = preload("res://assets/textures/Picsart_25-04-24_23-32-03-748.png")

	const Picsart25-04-2423-42-58-031Image: CompressedTexture2D = preload("res://assets/textures/Picsart_25-04-24_23-42-58-031.png")

	const Picsart25-04-2622-17-05-895Image: CompressedTexture2D = preload("res://assets/textures/Picsart_25-04-26_22-17-05-895.png")

	const DynamicCrosshairImage: CompressedTexture2D = preload("res://autoload/screen/dynamic_crosshair.svg")

	const ShakeCamera2dImage: CompressedTexture2D = preload("res://components/camera/2D/shake/shake_camera_2d.svg")

	const TraumaCauserImage: CompressedTexture2D = preload("res://components/camera/2D/shake/trauma_causer.svg")

	const TraumaDetectorImage: CompressedTexture2D = preload("res://components/camera/2D/shake/trauma_detector.svg")

	const FreeLookCameraImage: CompressedTexture2D = preload("res://components/camera/3D/free_look/free_look_camera.svg")

	const CameraShake3dImage: CompressedTexture2D = preload("res://components/camera/3D/shake/camera_shake_3d.svg")

	const TraumaCauserImage_1: CompressedTexture2D = preload("res://components/camera/3D/shake/trauma_causer.svg")

	const TraumaDetectorImage_1: CompressedTexture2D = preload("res://components/camera/3D/shake/trauma_detector.svg")

	const HitboxImage: CompressedTexture2D = preload("res://components/collisions/hitbox_hurtbox/hitbox.svg")

	const HurtboxImage: CompressedTexture2D = preload("res://components/collisions/hitbox_hurtbox/hurtbox.svg")

	const ClearSkyImage: CompressedTexture2D = preload("res://components/environment/day_night_cycle/sky_panoramas/panoramas/clear_sky.png")

	const DawnImage: CompressedTexture2D = preload("res://components/environment/day_night_cycle/sky_panoramas/panoramas/dawn.png")

	const DayImage: CompressedTexture2D = preload("res://components/environment/day_night_cycle/sky_panoramas/panoramas/day.png")

	const DuskImage: CompressedTexture2D = preload("res://components/environment/day_night_cycle/sky_panoramas/panoramas/dusk.png")

	const OvercastImage: CompressedTexture2D = preload("res://components/environment/day_night_cycle/sky_panoramas/panoramas/overcast.png")

	const StarsBigImage: CompressedTexture2D = preload("res://components/environment/day_night_cycle/sky_panoramas/panoramas/stars_big.png")

	const Interactable2dImage: CompressedTexture2D = preload("res://components/interaction/2D/interactables/interactable_2d.svg")

	const Interactor2dImage: CompressedTexture2D = preload("res://components/interaction/2D/interactors/interactor_2d.svg")

	const RandomLightEnergyImage: CompressedTexture2D = preload("res://components/interaction/3D/lights/random_light_energy.svg")

	const SwitchableLightsImage: CompressedTexture2D = preload("res://components/interaction/3D/lights/switchable_lights.svg")

	const VisualHint3dImage: CompressedTexture2D = preload("res://components/interaction/3D/visuals/visual_hint_3d.svg")

	const DungeonControllerImage: CompressedTexture2D = preload("res://components/motion/3D/dungeon_crawler/dungeon_controller.svg")

	const DungeonMovementImage: CompressedTexture2D = preload("res://components/motion/3D/dungeon_crawler/dungeon_movement.svg")

	const FootstepManager3dImage: CompressedTexture2D = preload("res://components/motion/3D/first_person/footsteps/footstep_manager_3d.svg")

	const BulletHoleBlackImage: CompressedTexture2D = preload("res://components/motion/3D/first_person/weapons/bullets/decals/holes/black/bullet_hole_black.png")

	const BulletHoleEmitImage: CompressedTexture2D = preload("res://components/motion/3D/first_person/weapons/bullets/decals/holes/black/bullet_hole_emit.png")

	const BulletHoleNormalImage: CompressedTexture2D = preload("res://components/motion/3D/first_person/weapons/bullets/decals/holes/black/bullet_hole_normal.png")

	const BulletHoleOrmImage: CompressedTexture2D = preload("res://components/motion/3D/first_person/weapons/bullets/decals/holes/black/bullet_hole_orm.png")

	const BloodHitImage: CompressedTexture2D = preload("res://components/motion/3D/first_person/weapons/bullets/decals/holes/blood/blood_hit.png")

	const BloodHitNormalMapImage: CompressedTexture2D = preload("res://components/motion/3D/first_person/weapons/bullets/decals/holes/blood/blood_hit_normal_map.png")

	const BulletHolesAtlasImage: CompressedTexture2D = preload("res://components/motion/3D/first_person/weapons/bullets/decals/holes/bullet_holes_atlas.png")

	const BulletHoleBasicImage: CompressedTexture2D = preload("res://components/motion/3D/first_person/weapons/bullets/decals/holes/bullet_hole_basic.png")

	const BulletHoleMetalImage: CompressedTexture2D = preload("res://components/motion/3D/first_person/weapons/bullets/decals/holes/bullet_hole_metal.png")

	const TxSmokeImage: CompressedTexture2D = preload("res://components/motion/3D/first_person/weapons/bullets/impacts/textures/smoke/TX_Smoke.png")

	const BulletImage: CompressedTexture2D = preload("res://components/motion/3D/first_person/weapons/icons/bullet.svg")

	const WeaponImage: CompressedTexture2D = preload("res://components/motion/3D/first_person/weapons/icons/weapon.svg")

	const WeaponHolderImage: CompressedTexture2D = preload("res://components/motion/3D/first_person/weapons/icons/weapon_holder.svg")

	const WeaponMotionImage: CompressedTexture2D = preload("res://components/motion/3D/first_person/weapons/icons/weapon_motion.svg")

	const Flash1Image: CompressedTexture2D = preload("res://components/motion/3D/first_person/weapons/muzzle/textures/flash1.png")

	const Flash4Image: CompressedTexture2D = preload("res://components/motion/3D/first_person/weapons/muzzle/textures/flash4.png")

	const MuzzleBlastImage: CompressedTexture2D = preload("res://components/motion/3D/first_person/weapons/muzzle/textures/muzzle_blast.png")

	const MuzzleFlashTextureImage: CompressedTexture2D = preload("res://components/motion/3D/first_person/weapons/muzzle/textures/muzzle_flash_texture.png")

	const MuzzleGunfireImage: CompressedTexture2D = preload("res://components/motion/3D/first_person/weapons/muzzle/textures/muzzle_gunfire.png")

	const MuzzleGunfire2Image: CompressedTexture2D = preload("res://components/motion/3D/first_person/weapons/muzzle/textures/muzzle_gunfire_2.png")

	const MuzzleGunfire3Image: CompressedTexture2D = preload("res://components/motion/3D/first_person/weapons/muzzle/textures/muzzle_gunfire_3.png")

	const MuzzleGunfire4Image: CompressedTexture2D = preload("res://components/motion/3D/first_person/weapons/muzzle/textures/muzzle_gunfire_4.png")

	const WhiteImage: CompressedTexture2D = preload("res://components/motion/3D/first_person/weapons/muzzle/textures/white.png")

	const GhostImage: CompressedTexture2D = preload("res://components/vfx/2D/ghost_trail/ghost.svg")

	const Pop-effectImage: CompressedTexture2D = preload("res://components/vfx/2D/pop_effect/pop-effect.svg")

	const ShockwaveImage: CompressedTexture2D = preload("res://components/vfx/2D/shockwave/shockwave.svg")

	const IconImage: CompressedTexture2D = preload("res://icon.svg")

	const Ah-ui-lineImage: CompressedTexture2D = preload("res://shaders/vhs/camera-frame-ui/ah-ui-LINE.png")

	const Ah-ui-next-leftImage: CompressedTexture2D = preload("res://shaders/vhs/camera-frame-ui/ah-ui-next-left.png")

	const Ah-ui-next-rightImage: CompressedTexture2D = preload("res://shaders/vhs/camera-frame-ui/ah-ui-next-right.png")

	const Ah-ui-pointerImage: CompressedTexture2D = preload("res://shaders/vhs/camera-frame-ui/ah-ui-POINTER.png")

	const Ah-ui-rec-letteringImage: CompressedTexture2D = preload("res://shaders/vhs/camera-frame-ui/ah-ui-REC-LETTERING.png")

	const Ah-ui-rec-symbolImage: CompressedTexture2D = preload("res://shaders/vhs/camera-frame-ui/ah-ui-REC-SYMBOL.png")

	const ContinueIconImage: CompressedTexture2D = preload("res://shaders/vhs/camera-frame-ui/ContinueIcon.png")

	const DotImage: CompressedTexture2D = preload("res://shaders/vhs/camera-frame-ui/dot.png")

	const Spr-playMaskImage: CompressedTexture2D = preload("res://shaders/vhs/camera-frame-ui/SPR-PlayMask.png")

	const BoxTransparentImage: CompressedTexture2D = preload("res://ui/components/ninepatchrect/box_transparent.png")

	const ResizableNinepatchrectImage: CompressedTexture2D = preload("res://ui/components/ninepatchrect/resizable_ninepatchrect.svg")

	const ContentWarningImage: CompressedTexture2D = preload("res://ui/content_warning/content_warning.svg")

	const PixelViewportDrawingImage: CompressedTexture2D = preload("res://ui/debug_ui/pixel_viewport_drawing.svg")

	const 14Border02Image: CompressedTexture2D = preload("res://ui/menus/layouts/pixel_art/assets/14 Border 02.png")

	const MouseParallaxImage: CompressedTexture2D = preload("res://ui/mouse/parallax/mouse_parallax.svg")

	const AutoTypedTextImage: CompressedTexture2D = preload("res://ui/narrative/text/auto_typed_text.svg")

	const PerformanceMetricsImage: CompressedTexture2D = preload("res://ui/performance/metrics/performance_metrics.svg")

class Audios:
	const 150214PumodiMenu-move-2Audio: AudioStreamMP3 = preload("res://assets/Audio/SE/150214__pumodi__menu-move-2.mp3")

	const 198448Cs279Menu-scroll-selection-soundAudio: AudioStreamWAV = preload("res://assets/Audio/SE/198448__cs279__menu-scroll-selection-sound.wav")

	const 427870Lavacoal123Mechanical-menu-button-pressAudio: AudioStreamWAV = preload("res://assets/Audio/SE/427870__lavacoal123__mechanical-menu-button-press.wav")

	const 540478BrevicepsMetallic-file-selectAudio: AudioStreamWAV = preload("res://assets/Audio/SE/540478__breviceps__metallic-file-select.wav")

	const 571579ElBossMetallic-game-menu-ping-variation-2Audio: AudioStreamWAV = preload("res://assets/Audio/SE/571579__el_boss__metallic-game-menu-ping-variation-2.wav")

	const 671892SanderboahMenu-soundsAudio: AudioStreamWAV = preload("res://assets/Audio/SE/671892__sanderboah__menu-sounds.wav")

	const 744321FairsonicstudioBbrsSfxMenubackpageAudio: AudioStreamWAV = preload("res://assets/Audio/SE/744321__fairsonicstudio__bbrs_sfx_menubackpage.wav")

	const 745496HarrisonlaceMetallicUiSelectionAudio: AudioStreamWAV = preload("res://assets/Audio/SE/745496__harrisonlace__metallic_ui_selection.wav")

	const 789771Dan2008Calm-menu-music-loopable-bitcrushedAudio: AudioStreamWAV = preload("res://assets/Audio/songs/789771__dan2008__calm-menu-music-loopable-bitcrushed.wav")

	const PianoChopinPreludeOpus28No4Audio: AudioStreamMP3 = preload("res://assets/Audio/songs/Piano Chopin Prelude Opus 28 no. 4.mp3")

class Fonts:
	const AntiqueBookFont: Fonts = preload("res://assets/fonts/Antique Book.ttf")

	const BaketvalleyOldFaceFont: Fonts = preload("res://assets/fonts/baketvalley_old_face.ttf")

	const Drunkfonts-regularFont: Fonts = preload("res://assets/fonts/DRUNKFONTS-Regular.otf")

	const Essays1743-boldFont: Fonts = preload("res://assets/fonts/Essays1743-Bold.ttf")

	const Essays1743-boldItalicFont: Fonts = preload("res://assets/fonts/Essays1743-BoldItalic.ttf")

	const Essays1743-italicFont: Fonts = preload("res://assets/fonts/Essays1743-Italic.ttf")

	const Essays1743Font: Fonts = preload("res://assets/fonts/Essays1743.ttf")

	const HappyBirthday-regularFont: Fonts = preload("res://assets/fonts/HappyBirthday-Regular.ttf")

	const HultogEngravedFont: Fonts = preload("res://assets/fonts/Hultog Engraved.ttf")

	const LeanderFont: Fonts = preload("res://assets/fonts/Leander.ttf")

	const RomanAntique-italicFont: Fonts = preload("res://assets/fonts/RomanAntique-Italic.ttf")

	const RomanAntiqueFont: Fonts = preload("res://assets/fonts/RomanAntique.ttf")

	const ShakespeareFirstFolioFontFont: Fonts = preload("res://assets/fonts/Shakespeare First Folio Font.otf")

	const Ark-pixel-10Px-monospaced-latinFont: Fonts = preload("res://ui/menus/layouts/pixel_art/theme/fonts/ark_pixel/ark-pixel-10px-monospaced-latin.otf")

