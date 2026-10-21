extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print($Sprite2D2.position)
	print($StickFigure.global_position)
	print($StickFigure.position)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
