extends TileMap

var noise: FastNoiseLite
# Called when the node enters the scene tree for the first time.
func _ready():
	generateMap()
	pass # Replace with function body.

func generateMap():
	noise = FastNoiseLite.new()
	noise.seed = 123
	noise.frequency = 0.02
	noise.fractal_octaves = 4
	noise.fractal_lacunarity = 2.0
	noise.fractal_gain = 0.5
	
	for x in range(100):
		for y in range(100):
			var coords: Vector2 = Vector2(x, y)
			var noise_value = noise.get_noise_2dv(coords)
			var tile_index = determine_tile_index(noise_value)
			set_cell(0, coords, 0, tile_index)
	pass
func determine_tile_index(value: float) -> Vector2:
	if value < 0.2:
		return Vector2(0,0)
	elif value > 0.2 && value < 0.5:
		return Vector2(3,0)
	else:
		return Vector2(2,1)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
