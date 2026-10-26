extends Area2D


func _ready() -> void:
	position = Vector2(randi_range(-189, 195), randi_range(-320, 320))


func _on_body_entered(body: Node2D) -> void:
	#print("coin moneys ", str(body.get_groups()))
	if body.is_in_group("player"):
		#print("player")
		Global.money += 1
		queue_free()
	else:
		position = Vector2(randi_range(-189, 195), randi_range(-320, 320))
