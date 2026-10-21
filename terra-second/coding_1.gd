extends Node2D

var a = 10
var b = 20
var test = "test string"

func _ready():
	add_to_array("hello")
	print(1234)
	print(add_to_array("ya"))
	print(pythagoras(3, 4))
	print(test)
	test += "afoaidushf"
	print(test)
	print(2/3) #two numbers were integers
	print(2.0/3)
	print(2/3.0)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func add_to_array(adf):
	var array: Array = []
	array.append(1) 
	array.append(4)
	array.append(6)
	array.append(7)
	array.append(adf)
	for i in array:
		print(i)
	return "fadofadfh"
	
func pythagoras(a, b):
	return ((a**2+b**2)**0.5)
	
