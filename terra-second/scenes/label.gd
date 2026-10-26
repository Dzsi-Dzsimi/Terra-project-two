extends Label

var time: int = 0

func _on_elapsed_timer_timeout() -> void:
	time += 1
	text = "Time elapsed: " + str(time)
	
