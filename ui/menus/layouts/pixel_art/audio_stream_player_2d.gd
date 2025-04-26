extends AudioStreamPlayer2D

@export var fade_duration := 2.0

func _ready():
	# Si tu veux que ça joue automatiquement
	play()

func fade_and_stop():
	var tween := create_tween()
	tween.tween_property(self, "volume_db", -80, fade_duration)
	tween.tween_callback(Callable(self, "stop"))
