extends Node2D

var props= preload("res://mob.tscn")
func _ready():
	$Timer.start()

func _on_Timer_timeout():
	var mob = props.instance()
	add_child(mob)
	print("1")
