extends LinkButton

func _on_ResumeButton_pressed():
	get_tree().paused = false
	get_parent().get_parent().get_parent().visible = false
