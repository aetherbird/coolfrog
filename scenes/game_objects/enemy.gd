extends RigidBody2D

@onready var game_manager = %GameManager
@export var hearts : Array[Node]

func _on_area_2d_body_entered(body):
	if (body.name == "CharacterBody2D"):
		var y_delta = position.y - body.position.y
		if (y_delta > 30):
			print("Destroy enemy")
			queue_free()
			body.jump()
		else:
			print("Decrease player health")
			game_manager.decrease_health()
			# get_tree().reload_current_scene()
		
