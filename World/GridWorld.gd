extends GridMap

const LENGTH = 2
const WIDTH = 2
const HEIGHT = 3
export (int) var world_seed = 1 setget set_seed
var noise_resource = preload("res://SoftNoise-GDScript-/softnoise.gd")
var softnoise
var x_o
var y_o
var z_o

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	for y in range(0, HEIGHT):
		for x in range(0, LENGTH):
			for z in range(0, WIDTH):
				set_cell_item(x + (x_o * LENGTH), y + (y_o * HEIGHT), z + (z_o * WIDTH), 0)

func set_seed(new_seed):
	world_seed = new_seed
	softnoise = noise_resource.SoftNoise.new(world_seed)

func init(xo, yo, zo, noise_seed = world_seed):
	softnoise = noise_resource.SoftNoise.new(noise_seed)
	x_o = xo
	y_o = yo
	z_o = zo

func _input(event):
	if event is InputEventKey:
		if event.pressed and event.scancode == KEY_SPACE:
			pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
