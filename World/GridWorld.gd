tool
extends GridMap

export (int) var world_seed = 0 setget set_world

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

func set_world(new_seed):
	world_seed = new_seed

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
