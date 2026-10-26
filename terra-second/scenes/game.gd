extends Node2D
#YSort = detemines which objects are on top depending on their position
var car_scene: PackedScene = preload("res://scenes/car.tscn")
var coin_scene: PackedScene = preload("res://scenes/coin.tscn")

func _ready() -> void:
	generate_coins(10)

func change_scene():
	get_tree().change_scene_to_file("res://scenes/title.tscn")

func _on_finish_area_entered(_body: Node2D) -> void:
	#get_tree().change_scene_to_file("res://scenes/title.tscn")
	#print(body, " has entered")
	#print(body)
	#print("trying to change to title scene...")
	Global.score = $CanvasLayer/TimeLabel.time
	#print("Time = " + str(Global.score))
	call_deferred("change_scene") #need to use this so that the physics objects dont cause any errors. It just calls the function with 

func _on_car_timer_timeout() -> void:
	var car = car_scene.instantiate() as Area2D #as Area2D is needed so that suggestions are present for this variable so that it is harder to mess up
	var pos_marker = $CarStartPositions.get_children().pick_random() as Marker2D
	car.position = pos_marker.position
	$Objects.add_child(car)
	car.connect("body_entered", go_to_title) #connecting a signal, you want the node to be connected, the signal name, and the function you want to call
	

func go_to_title(body): #parameter of body automatically passed into the function by the connect. there would be an error if no parameters were declared for the function
	print(body) # we can see that any body collision calls the function
	#print("player car collision")
	#print("score: " + str(Global.score))
	Global.score = $CanvasLayer/TimeLabel.time
	call_deferred("change_scene")
	
func generate_coins(num):
	for i in range(num):
		var coin = coin_scene.instantiate()
		$Objects.add_child(coin)
		coin.connect("body_entered", update_coin_label)
		
func update_coin_label(_body):
	$CanvasLayer/CoinLabel.text = "= " + str(Global.money)
