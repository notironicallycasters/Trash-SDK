#The door at the end of levels
extends StaticBody3D

#The end of previous level close
func _on_end_body_entered(body):
	var tween = get_tree().create_tween()
	if body.name == "Trash":
		tween.tween_property(self, "position", Vector3(position.x,5.0,position.z), 1)

#The begining of the next level
func _on_end_body_exited(body):
	var tween = get_tree().create_tween()
	if body.name == "Trash":
		tween.tween_property(self, "position", Vector3(position.x,14.0,position.z), 3)
