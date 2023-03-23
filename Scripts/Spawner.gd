extends Node

export (Array, PackedScene) var scenes

var random_scene = RandomNumberGenerator.new()
var selected_scene_index = 0
var timer = Timer.new()
var rng = RandomNumberGenerator.new()
var score = 0


func _ready():
	add_child(timer)
	timer.connect("timeout", self, "_on_Timer_timeout")
	rng.randomize() # Seed the random number generator with the current time.
	timer.set_wait_time(rng.randf_range(5.0, 15.0))
	timer.start()


func new_game():
	score = 0
	$ScoreTimer.start()

func game_over():
	$ScoreTimer.stop()

func _on_Timer_timeout():
	timer.set_wait_time(rng.randf_range(5.0, 8.0))
	if scenes.size() >= 2:
		selected_scene_index = random_scene.randi_range(0, scenes.size() - 1)
		var tmp = scenes[selected_scene_index].instance()
		add_child(tmp)


func _on_ScoreTimer_timeout():
	score+=1
	$HUD.update_score(score)
