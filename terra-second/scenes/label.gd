extends Label

var timer: int = 0

func _on_elapsed_timer_timeout() -> void:
	timer += 1
	text = "Time elapsed: " + str(timer)
	
