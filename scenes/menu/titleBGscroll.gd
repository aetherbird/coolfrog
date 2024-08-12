extends Node2D

export var scroll_speed: float = 100.0

func _ready():
	var offset: float = 0.0

func _process(delta: float):
	# Update the offset based on the scroll speed and time passed
	offset -= scroll_speed * delta

	# If the offset exceeds the width of the texture, reset it to loop
	if offset <= -$TitleBGScroll.rect_size.x:
		offset = 0

	# Apply the offset to the texture's position
	$TitleBGScroll.rect_position.x = offset
