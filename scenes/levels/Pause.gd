extends Node

@onready var pause_panel = %PausePanel
var paused = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("pause"):
		pauseMenu()

func pauseMenu():
		if paused:
			pause_panel.hide()
			Engine.time_scale = 1
		else:
			pause_panel.show()
			Engine.time_scale = 0
		paused = !paused

func _on_resume_pressed():
	pauseMenu()

func _on_menu_pressed():
	Engine.time_scale = 1
	get_tree().change_scene_to_file("res://scenes/menu/main_menu.tscn")
