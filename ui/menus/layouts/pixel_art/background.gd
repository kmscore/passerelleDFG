# RandomAnimation.gd
extends AnimatedSprite2D

# Liste des animations spéciales (idle n'y figure pas)
var special_anims: Array[String] = ["light", "redlight", "pump", "littlepump", "2redlight", "smoke"]
# Probabilité en pourcentage de lancer une animation spéciale
const SPECIAL_CHANCE := 80
# Intervalle aléatoire entre chaque opportunité de lancer une spéciale (en secondes)
const INTERVAL_MIN := 5.0
const INTERVAL_MAX := 10.0
# Durée aléatoire de l'animation spéciale (entre 2 et 5 secondes)
const SPECIAL_MIN := 2.0
const SPECIAL_MAX := 5.0

# Flag pour indiquer qu'une animation spéciale est en cours
var playing_special: bool = false

func _ready() -> void:
	# Connecter le signal d'animation terminée
	connect("animation_finished", Callable(self, "_on_animation_finished"))
	# Jouer idle dès le départ
	play("idle")
	# Démarrer le cycle
	_start_timer()

func _start_timer() -> void:
	# Choisir un intervalle aléatoire avant le prochain check
	var interval := randf_range(INTERVAL_MIN, INTERVAL_MAX)
	get_tree().create_timer(interval).connect("timeout", Callable(self, "_on_timeout"))

func _on_timeout() -> void:
	if playing_special:
		# Si déjà en spéciale, on attend le prochain intervalle
		_start_timer()
		return

	var roll := randi() % 100
	if roll < SPECIAL_CHANCE:
		# Choisir et jouer une animation spéciale (idle ne peut pas être choisie)
		var anim := special_anims[randi() % special_anims.size()]
		playing_special = true
		play(anim)
		# Timer pour la durée aléatoire de la spéciale
		var delay := randf_range(SPECIAL_MIN, SPECIAL_MAX)
		get_tree().create_timer(delay).connect("timeout", Callable(self, "_on_special_done"))
	else:
		# Pas de spéciale -> rester sur idle
		if animation != "idle":
			play("idle")
		_start_timer()

func _on_special_done() -> void:
	# Fin du timer de la spéciale -> retour à idle
	playing_special = false
	play("idle")
	# Redémarrer le cycle
	_start_timer()

func _on_animation_finished(anim_name: String) -> void:
	# Assurer que idle boucle si terminé naturellement
	if not playing_special and anim_name == "idle":
		play("idle")
