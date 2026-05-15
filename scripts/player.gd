extends CharacterBody2D

@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D


@export var inv: Inv

const SPEED = 300.0
var last_direction: Vector2 = Vector2.RIGHT


func _physics_process(_delta: float) -> void:
	procces_movement()
	procces_animation()
	move_and_slide()

#************************
#	MOVEMENT
#	&
#	ANIMATION
#*************************

func procces_movement() -> void:
		# Get the input direction and handle the movement/deceleration.
	var direction := Input.get_vector("go_left","go_right","go_up","go_down")
	velocity = direction * SPEED
	
	if direction != Vector2.ZERO:
		velocity = direction * SPEED
		last_direction = direction
	else:
		velocity = Vector2.ZERO



func procces_animation() ->void :
	if velocity != Vector2.ZERO:
		player_animation("run", last_direction)
	else:
		player_animation("run", last_direction)

func player_animation(prefix: String, dir: Vector2) -> void:
	if dir.x != 0:
		animated_sprite_2d.flip_h = dir.x < 0
		animated_sprite_2d.play(prefix + "_right")
	elif dir.y < 0:
		animated_sprite_2d.play(prefix + "_up")
	elif dir.y > 0:
		animated_sprite_2d.play(prefix + "_down")


func player():
	pass
