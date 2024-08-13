extends Node

@onready var character_body_2d = $"."
@onready var points_label = %PointsLabel
@export var hearts : Array[Node]

var points = 0
var lives = 3

func decrease_health():
	lives -= 1
	print(lives)
	for h in 3:
		if (h < lives):
			hearts[h].show()
		else:
			hearts[h].hide()
	if (lives == 0):
		AudioServer.set_bus_mute(AudioServer.get_bus_index("Master"), true)
		AudioServer.set_bus_mute(AudioServer.get_bus_index("Master"), false)
		$AudioStreamDied.play()
		await get_tree().create_timer(1.0).timeout
		get_tree().reload_current_scene()

func add_point():
	points += 1
	print(points)
	points_label.text =  "Points: " + str(points)
	$AudioStreamTokenClank.play()
