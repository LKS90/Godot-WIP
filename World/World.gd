extends Node

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var GridWorld = preload("res://World/GridWorld.tscn")

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	var counter = 1
	for x in range(0,3):
		for y in range(0,3):
			for z in range(0,3):
				var gw = GridWorld.instance()
				gw.init(x,y,z)
				add_child(gw)
				counter += 1

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
