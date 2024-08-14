extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_body_entered(body):
	print("Touched " + body.name)
	if (body.name == "CharacterBody2D"):
		$AudioStreamDied.play()
		$AnimationFadeOut.play("fade_out")
		await get_tree().create_timer(1.0).timeout
		get_tree().reload_current_scene()
