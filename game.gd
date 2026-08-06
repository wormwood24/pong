extends Node2D

var left_paddle_score: int = 0
var right_paddle_score: int = 0
@export var reset_timer: Timer 

func _on_left_side_goal_body_entered(body: Node2D) -> void:
	right_paddle_score += 1
	$Scores/RightPaddleScore.text = str(right_paddle_score)
	reset_game()


func _on_right_side_goal_body_entered(body: Node2D) -> void:
	left_paddle_score += 1
	$Scores/LeftPaddleScore.text = str(left_paddle_score)
	reset_game()
	
func reset_game():
	$LeftPaddle.position.y = 0
	$RightPaddle.position.y = 0
	$Ball.velocity = Vector2.ZERO
	$Ball.position = Vector2.ZERO
	reset_timer.start()


func _on_reset_timer_timeout() -> void:
	$Ball.velocity = Vector2(randi_range(-1,1), randi_range(-1,1))
	
