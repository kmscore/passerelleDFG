extends CharacterBody3D
class_name NPCOrientationSprite

@export var animated_sprite: AnimatedSprite3D

var _player: IndieBlueprintThirdPersonController = null
var _camera: Camera3D = null

func _ready() -> void:
	# Récupère le player via le groupe 'Player'
	var players = get_tree().get_nodes_in_group("Player")
	if players.size() > 0:
		_player = players[0] as IndieBlueprintThirdPersonController
		# Récupère la caméra attachée au player (SpringArmPivot/Camera3D)
		var cam_node = _player.get_node_or_null("SpringArmPivot/Camera3D")
		if cam_node != null and cam_node is Camera3D:
			_camera = cam_node as Camera3D
		elif _player.has_method("get_camera"):
			_camera = _player.get_camera()
		else:
			push_error("NPCOrientationSprite: impossible de trouver le Camera3D sur le player. Chemin attendu : SpringArmPivot/Camera3D.")
			push_error("NPCOrientationSprite: impossible de trouver le Camera3D sur le player.")
	else:
		push_error("NPCOrientationSprite: aucun noeud dans le groupe 'Player'. Ajoute ton player au groupe 'Player'.")

func _process(_delta: float) -> void:
	if _camera == null:
		return

	# Oriente l'AnimatedSprite3D vers la caméra (billboard Y)
	var sprite_global = animated_sprite.global_transform.origin
	var cam_pos = _camera.global_transform.origin
	var dir_to_cam = cam_pos - sprite_global
	dir_to_cam.y = 0.0
	animated_sprite.look_at(sprite_global + dir_to_cam, Vector3.UP)

	# Yaw du NPC
	var npc_yaw = fposmod(rad_to_deg(global_transform.basis.get_euler().y), 360.0)
	# Yaw de la caméra
	var cam_yaw = fposmod(rad_to_deg(_camera.global_transform.basis.get_euler().y), 360.0)

	# Différence relative (-180 à 180)
	var diff = fposmod(npc_yaw - cam_yaw + 180.0, 360.0) - 180.0

	# Choix du sprite selon diff
	if diff >= -45.0 and diff < 45.0:
		animated_sprite.play("idle_back")
	elif diff >= 45.0 and diff < 135.0:
		animated_sprite.play("idle_left")
	elif diff < -45.0 and diff > -135.0:
		animated_sprite.play("idle_right")
	else:
		animated_sprite.play("idle_front")
