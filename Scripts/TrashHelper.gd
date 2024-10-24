#Literally helping the trash to get to the bin because you guys are baby
extends Area3D

@export var helper = Node3D

func _on_body_entered(body):
	if body.name == "Trash":
		body.linear_velocity = (helper.global_position - global_transform.origin)*3
