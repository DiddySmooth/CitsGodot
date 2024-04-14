extends Node

var custom_instance = preload("res://Scripts/Classes/Cit.gd").new()

# Called when the node enters the scene tree for the first time.
func _ready():
	createCit()
	pass # Replace with function body.

func createStarterCits():
	pass

func createCit():
	custom_instance.generateStats()
	print(custom_instance.getStats())
	custom_instance.generateName()
	pass



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
