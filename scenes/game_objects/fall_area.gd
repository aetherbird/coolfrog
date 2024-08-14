extends Area2D

@onready var animation_fade_out = %AnimationFadeOut

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_body_entered(body):
	print("Touched " + body.name)
	if (body.name == "CharacterBody2D"):
		#animation_fade_out.play("fade_out")
		$AudioStreamDied.play()
		await get_tree().create_timer(.8).timeout
		get_tree().reload_current_scene()
