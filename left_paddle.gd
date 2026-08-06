extends CharacterBody2D

@export var paddle_speed: int = 10
@export var ball: RigidBody2D

func _physics_process(delta: float) -> void:
	var direction: float 
	if ball.global_position.y < global_position.y:
		direction = -1
	else:
		direction = 1
	velocity.y = direction * paddle_speed
	
	move_and_slide()
