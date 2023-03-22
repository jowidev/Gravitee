extends "ScrollMovement.gd"

var min_speed = 1.50
var max_speed = 250
 
# Called when the node enters the scene tree for the first time.
func _ready():
	add_to_group("Mob")

func move():
	self.position.x-=min_speed


func _physics_process(_delta):
	move()

func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
	print("destroyed")
