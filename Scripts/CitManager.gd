extends Node

var custom_instance = preload("res://Scripts/Classes/Cit.gd").new()

# Called when the node enters the scene tree for the first time.
func _ready():
	custom_instance.generateStats()
	custom_instance.getStats()
	pass # Replace with function body.

func createStarterCits():
	pass

func createCit():
	pass



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
