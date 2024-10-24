#Trampoline
extends RigidBody3D

@onready var boing = $AudioStreamPlayer3D

func _on_body_entered(body):
	if body.name == "Player": #Player here ?
		linear_velocity.y += 200 #UUUGGGH
		boing.play() #Boing level bip
