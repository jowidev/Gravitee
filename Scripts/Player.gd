extends KinematicBody2D 

var grav = 10
var speed = Vector2.ZERO #0,0
var timeschange = 0



# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func get_input():
	if timeschange < 5:
		if Input.is_action_just_pressed("down"):
			grav = 25



	
	if timeschange < 5:
		if Input.is_action_just_pressed("up"):
			grav = -25


func _physics_process(_delta):
	get_input()
	speed.y += grav
	speed = move_and_slide(speed)

func _on_Area2D_body_entered(body):
	if body.is_in_group("Ground"):
		timeschange = 0
	if body.is_in_group("Mob"):
		queue_free()
