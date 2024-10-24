#Lava make you ded
extends Area3D

func _on_body_entered(body):
	if body.name == "Player" or body.name == "Trash":
		get_tree().reload_current_scene()
