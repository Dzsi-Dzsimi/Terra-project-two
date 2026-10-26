extends CharacterBody2D

var direction: Vector2 #default is zero
var speed: int = 6000

func _ready() -> void:
	add_to_group("player")

func _physics_process(delta: float) -> void:
	direction = Input.get_vector("left", "right", "up", "down")
	velocity = direction * speed * delta
	animation()
	move_and_slide()

func animation():
	if direction:
		if direction.x != 0:
			$AnimatedSprite2D.animation = "left"
			$AnimatedSprite2D.flip_h = direction.x > 0
		else:
			$AnimatedSprite2D.animation = "up" if direction.y < 0 else "down"
	else:
		$AnimatedSprite2D.frame = 1
