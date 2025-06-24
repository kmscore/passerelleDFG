extends Node2D

signal wave_ended

@export var projectile_scene: PackedScene
@export var spawn_interval: float = 5.0
@export var projectile_lifetime: float = 6.0
@export var target: Node2D
@export var player: Node
@export var attack_scene: PackedScene
@export var game_over_scene: PackedScene

var spawn_timer: Timer
var wave_timer: Timer

func _ready():
	# Timer de spawn
	spawn_timer = Timer.new()
	spawn_timer.wait_time = spawn_interval
	spawn_timer.one_shot = false
	spawn_timer.autostart = true
	spawn_timer.timeout.connect(_on_spawn_timer_timeout)
	add_child(spawn_timer)

	# Timer de wave
	wave_timer = Timer.new()
	wave_timer.wait_time = 40
	wave_timer.one_shot = true
	wave_timer.autostart = true
	wave_timer.timeout.connect(_on_wave_timeout)
	add_child(wave_timer)

	# Connexion mort du joueur
	if player:
		var health_component = player.get_node_or_null("HealthComponent")
		if health_component:
			health_component.died.connect(_on_player_died)

	# Connexion au signal wave
	wave_ended.connect(_on_wave_ended)

func _on_spawn_timer_timeout():
	var projectile = projectile_scene.instantiate()
	projectile.global_position = global_position
	projectile.target = target
	add_child(projectile)
	projectile.call_deferred("set_lifetime", projectile_lifetime)

func _on_wave_timeout():
	emit_signal("wave_ended")

func _on_wave_ended():
	if attack_scene:
		IndieBlueprintSceneTransitioner.transition_to(attack_scene.resource_path)

func _on_player_died():
	if game_over_scene:
		IndieBlueprintSceneTransitioner.transition_to(game_over_scene.resource_path)
