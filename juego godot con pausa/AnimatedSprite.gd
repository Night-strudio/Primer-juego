extends KinematicBody2D#MOVER PERSONAJE
var velocity = Vector2.ZERO
var speed = 350
onready var animatedSprite = $AnimatedSprite
var gravity
var damage = 16.5
func _process(_delta):

		get_input(_delta)
		if (position.x >= 480):
			position.x = 480
		if (position.x <= 0):
			position.x = 0
		if (position.y >= 720):
			position.y = 720

		if (position.y <= 0):
			
			

		
	



			position.y = 0
	
func get_input(_delta):
	velocity = Vector2.ZERO
	if (Input.is_action_pressed("ui_up") || Input.is_action_pressed("ui_down") || Input.is_action_pressed("ui_right") || Input.is_action_pressed("ui_left")):
		$AnimatedSprite.animation = "run"
		if (Input.is_action_pressed("ui_left")):
			$AnimatedSprite.flip_h = true
			velocity.x = -1
		if (Input.is_action_pressed("ui_right")):
			$AnimatedSprite.flip_h = false
			velocity.x = 1
		if (Input.is_action_pressed("ui_up")):
			velocity.y = -1
		if (Input.is_action_pressed("ui_down")):
			velocity.y = 1
		if (velocity.length() > 0):
			velocity = velocity.normalized() * speed * _delta
			position += velocity
	else:
		$AnimatedSprite.animation = "idle"

func animation():
	if (velocity.x < 0):
		animatedSprite.animation
		$AnimatedSprite

func move(delta):
	if(is_on_floor()):
		velocity.y = velocity.y +gravity + delta
		gravity = (velocity.i + velocity.f) / delta
		
		
		
	elif(Input.is_action_pressed("up")):
		velocity.y = - 200
		
	
