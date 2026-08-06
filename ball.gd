extends RigidBody2D

var velocity: Vector2 = Vector2(1, 1)
var speed: int = 200

func _physics_process(delta: float) -> void:
	var collision_info = move_and_collide(velocity * delta*speed)
	if velocity.x == 0:
		velocity.x == speed
	if velocity.y == 0:
		velocity.y == speed
	if collision_info:
		velocity = velocity.bounce(collision_info.get_normal())
		velocity *= 1.03
		$BallSound.play()
