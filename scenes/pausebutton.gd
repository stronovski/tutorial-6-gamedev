extends Button



func _on_pressed() -> void:
	get_tree().paused = not get_tree().paused
	get_parent().get_node("Pausedpanel").visible = true
