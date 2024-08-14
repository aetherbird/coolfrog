extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimationFadeOut.play("fade_out")
	$AudioStreamDied.play()
	await get_tree().create_timer(.7).timeout
	get_tree().reload_current_scene()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
