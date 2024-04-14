extends Node

var citManager = preload("res://Scripts/Classes/Cit.gd").new()

# Called when the node enters the scene tree for the first time.
func _ready():
	createCit()
	pass # Replace with function body.

func createStarterCits():
	pass

func createCit():
	citManager.generate()
	pass



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
