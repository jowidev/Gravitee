extends "ScrollMovement.gd"

var min_speed = 150
var max_speed = 250
 
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func move():
	self.position.x-=min_speed


func _physics_process(delta):
	move()

func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
