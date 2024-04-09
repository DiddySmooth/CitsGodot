extends TileMap

var noise: FastNoiseLite
# Called when the node enters the scene tree for the first time.
func _ready():
	generateMap()
	pass # Replace with function body.

func generateMap():
	noise = FastNoiseLite.new()
	noise.seed = 123
	noise.frequency = 0.009
	noise.fractal_octaves = 4
	noise.fractal_lacunarity = 2.0
	noise.fractal_gain = 0.5
	
	for x in range(1000):
		for y in range(1000):
			var coords: Vector2 = Vector2(x, y)
			var noise_value = noise.get_noise_2dv(coords)
			var tile_index = determine_tile_index(noise_value)
			set_cell(0, coords, 0, tile_index)
	pass
func determine_tile_index(value: float) -> Vector2:
	if value < -.8:
		return Vector2(0,0)
	elif value >= -.8 && value < -0.6:
		return Vector2(1,0)
	elif value >= -.6 && value < -.4:
		return Vector2(2,0)
	elif value >= -.4 && value < -.2:
		return Vector2(3,0)
	elif value >= -.2 && value < 0:
		return Vector2(0,1)
	elif value >= 0 && value < 0.2:
		return Vector2(1,1)
	elif value >= 0.2 && value < 0.4:
		return Vector2(2,1)
	elif value >= 0.4 && value < 0.6:
		return Vector2(0,2)
	elif value >= 0.6 && value < 0.8:
		return Vector2(2,2)
	else:
		return Vector2(3,2)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
