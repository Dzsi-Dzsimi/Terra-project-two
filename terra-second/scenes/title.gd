extends Control

func _ready() -> void:
	$ScoreLabel.text = "Time = " + str(Global.score)
	$Label2.text = "Coins = " + str(Global.money)

func change_scene_game():
	get_tree().change_scene_to_file("res://scenes/game.tscn") #redundant but ill keep this. there are no physics objects  
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("jump"):
		#print("space pressed")
		call_deferred("change_scene_game")
