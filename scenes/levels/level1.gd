extends Node

func _ready():
	$AudioStreamPlayerL1Music.play()
	# Play the drum fill
	# $AudioStreamPlayerFrog.play()
	
	# Connect the "finished" signal directly to the theme player
	# $AudioStreamPlayerFrog.finished.connect(self._on_PlayerFrog_finished)

# func _on_PlayerFrog_finished():
	# Play the theme music after the drum fill is done
	# $AudioStreamPlayerL1Music.play()
