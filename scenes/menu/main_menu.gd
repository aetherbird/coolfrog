extends Node

func _ready():
	# Play the drum fill
	$AudioStreamTitle.play()
	$AudioStreamPlayerDrumFill.play()
	
	# Connect the "finished" signal directly to the theme player
	$AudioStreamPlayerDrumFill.finished.connect(self._on_DrumFill_finished)

func _on_DrumFill_finished():
	# Play the theme music after the drum fill is done
	$AudioStreamPlayerTheme.play()

func _on_level_1_pressed():
	#LevelOpening.transition()
	#await LevelOpening.on_transition_finished
	get_tree().change_scene_to_file("res://scenes/levels/level1.tscn")

func _on_level_2_pressed():
	get_tree().change_scene_to_file("res://scenes/levels/level2.tscn")

func _on_level_3_pressed():
	get_tree().change_scene_to_file("res://scenes/levels/level3.tscn")
