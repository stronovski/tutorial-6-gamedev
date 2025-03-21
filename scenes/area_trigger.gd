extends Area2D

@export var scene_to_load: String = ""

func _on_Area_Trigger_body_entered(body):
	var current_scene = get_tree().get_current_scene().get_name()
	if body.get_name() == "Player":
		if current_scene == scene_to_load:
			Global.lives -=1
		if (Global.lives == 0):
			get_tree().change_scene_to_file(str("res://scenes/gameover.tscn"))
			Global.lives = 3
		else:
			get_tree().call_deferred("change_scene_to_file",(str("res://scenes/" + scene_to_load + ".tscn")))
