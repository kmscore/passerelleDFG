extends Sprite3D
class_name InteractionPrompt

# Récupère l’Area3D sœur du Sprite3D dans la hiérarchie NPC
@onready var interaction_area: Area3D = $"../InteractionArea"

# Référence au player
var player: IndieBlueprintThirdPersonController = null

# Paramètres d’animation
@export var swing_speed:    float = 3.0
@export var swing_amplitude: float = 0.27
@export var fade_time:      float = 0.35

# États internes
var time_passed:  float = 0.0
var fade_alpha:   float = 0.0
var is_fading_in:  bool  = false
var is_fading_out: bool  = false

func _ready() -> void:
	visible = false
	modulate.a = 0.0
	interaction_area.body_entered.connect(_on_body_entered)
	interaction_area.body_exited.connect(_on_body_exited)

func _on_body_entered(body: Node) -> void:
	# Quand le player entre dans la zone
	if body is IndieBlueprintThirdPersonController:
		player        = body
		is_fading_out = false
		is_fading_in  = true
		visible       = true

func _on_body_exited(body: Node) -> void:
	# Quand il sort
	if body == player:
		player        = null
		is_fading_in  = false
		is_fading_out = true

func _process(delta: float) -> void:
	# Balancement vertical constant
	time_passed += delta * swing_speed
	position.y    = 2 + sin(time_passed) * swing_amplitude

	# Fade-in progressif
	if is_fading_in:
		fade_alpha = min(fade_alpha + delta / fade_time, 1.0)
		modulate.a = fade_alpha
		if fade_alpha >= 1.0:
			is_fading_in = false

	# Fade-out progressif
	if is_fading_out:
		fade_alpha = max(fade_alpha - delta / fade_time, 0.0)
		modulate.a = fade_alpha
		if fade_alpha <= 0.0:
			is_fading_out = false
			visible       = false
