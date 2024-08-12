extends RigidBody2D

@onready var game_manager = %GameManager
# @export var hearts : Array[Node]

func _on_area_2d_body_entered(body):
	if (body.name == "CharacterBody2D"):
		var y_delta = position.y - body.position.y
		var x_delta = body.position.x - position.x
		if (y_delta > 30):
			print("Destroy enemy")
			queue_free()
			body.jump()
		else:
			print("Decrease player health")
			game_manager.decrease_health()
			if abs(x_delta) < 50:
				x_delta = 50 if x_delta >= 0 else -50
			body.jump_side((x_delta) * 10)
				# body.jump_side(750)
			#else:
				#body.jump_side(-750)
			# get_tree().reload_current_scene()
		
