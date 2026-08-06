extends CharacterBody2D

@export var paddle_speed: int = 10

func _physics_process(delta: float) -> void:
	var direction: float = Input.get_axis("right_paddle_up", "right_paddle_down")
	velocity.y = direction * paddle_speed
	
	move_and_slide()
