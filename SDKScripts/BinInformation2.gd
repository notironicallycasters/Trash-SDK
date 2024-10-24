#See when you end a level ? Thats the code of the bin in every level
extends Node3D

#Public variable becaue im ain´t using long aaah strings and quantum physics to find the nodes via scripts
var player = Node3D
@export var data = Node
@export var index = int(0) #Which bin is i
@export var finsihable = true

@onready var door1 = $Door
@onready var door2 = $Door2

#When you start the next level
func _on_start_body_entered(body):
	if body is RigidBody3D:
		player.time = 0 #Reset level timer
		player.finished = false #The level started
		data.data["location"] = str(index+1) #Where you are
		data.save() #Save the data where you are


func _on_end_body_entered(body):
	if body.name == "Player":
		player = body
		if finsihable:
			player.finished = true
		player.check_sfx.play() #Bip
		var tween = get_tree().create_tween()
		tween.tween_property(door1, "position", Vector3(door1.position.x,5.0,door1.position.z), 3)
		tween.tween_property(door2, "position", Vector3(door2.position.x,14.0,door2.position.z), 3)
