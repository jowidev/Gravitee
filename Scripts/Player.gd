extends KinematicBody2D 

var grav = 25
var speed = Vector2.ZERO #0,0
var timeschange = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func get_input():
	if Input.is_action_pressed("down"):
		grav = 25
		timeschange = timeschange +1

	if Input.is_action_pressed("up"):
		grav = -grav
	
func _physics_process(_delta):
	get_input()
	speed.y += grav
	speed = move_and_slide(speed)
