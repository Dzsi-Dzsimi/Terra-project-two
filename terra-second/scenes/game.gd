extends Node2D
#YSort = detemines which objects are on top depending on their position
var car_scene: PackedScene = preload("res://scenes/car.tscn")

func _on_finish_area_entered(body: Node2D) -> void:
	print(body, " has entered")
	print(body)


func _on_car_timer_timeout() -> void:
	var car = car_scene.instantiate() as Area2D #as Area2D is needed so that suggestions are present for this variable so that it is harder to mess up
	var pos_marker = $CarStartPositions.get_children().pick_random() as Marker2D
	car.position = pos_marker.position
	$Objects.add_child(car)
	car.connect("body_entered", go_to_title) #connecting a signal, you want the node to be connected, the signal name, and the function you want to call
	
func go_to_title(body): #parameter of body automatically passed into the function by the connect. there would be an error if no parameters were declared for the function
	print(body) # we can see that any body collision calls the function
	print("player car collision")
