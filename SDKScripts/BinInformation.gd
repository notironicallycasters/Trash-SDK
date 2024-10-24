#See when you end a level ? Thats the code of the bin in every level
extends Node3D

#Public variable becaue im ain´t using long aaah strings and quantum physics to find the nodes via scripts
var player = Node3D
@export var data = Node
@export var index = int(0) #Which bin is i
var finsihable = false


#When you start the next level
func _on_start_body_entered(body):
	if body is RigidBody3D:
		player.time = 0 #Reset level timer
		player.finished = false #The level started


func _on_end_body_entered(body):
	if body.name == "Trash":
		player = get_parent().get_parent().get_node("Player")
		if finsihable:
			player.finished = true
		if player == null:
			player.check_sfx.play() #Bip
