extends CharacterBody2D

var direction: Vector2 = Vector2.ZERO
var speed: int = 150

func _physics_process(_delta: float) -> void:
	direction = Input.get_vector("left", "right", "up", "down")
	velocity = direction * speed
	animation()
	move_and_slide()
	
	if Input.is_action_just_pressed("jump"):
		print("something")

func animation():
	if direction:
		if direction.x != 0:
			$AnimatedSprite2D.animation = "left"
			$AnimatedSprite2D.flip_h = direction.x > 0
		else:
			$AnimatedSprite2D.animation = "up" if direction.y < 0 else "down"
	else:
		$AnimatedSprite2D.frame = 1
