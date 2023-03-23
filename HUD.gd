extends CanvasLayer

signal start_game

# Called when the node enters the scene tree for the first time.
func update_score(score):
	$ScoreLabel.text= str(score)
	
func show_message(text):
	$MessageLabel.text = text
	$MessageLabel.show()
	$MessageTimer.start()


func show_game_over():
	show_message("Game Over")
	
	
func _on_Button_pressed():
	$Button.hide()
	emit_signal("start_game")


func _on_messageTimer_timeout():
	$MessageLabel.hide()
