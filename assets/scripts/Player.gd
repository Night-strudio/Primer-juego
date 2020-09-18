extends KinematicBody2D

var velocity = Vector2.ZERO

var speed = 150

func process(_delta):
	velocity = Vector2.ZERO
	if (Input.is_action_pressed("ui_left")):
		velocity.x = -1
	if (Input.is_action_pressed("ui_right")):
		velocity.x = 1
	if (Input.is_action_pressed("ui_up")):
		velocity.y = -1
	if (Input.is_action_pressed("ui_down")):
		velocity.y = 1
	if (velocity.length() > 0):
		velocity = velocity.normalized() * speed * _delta
		$".".position += velocity
