extends Node


var starterNumber = 6
var cits = []
# Called when the node enters the scene tree for the first time.
func _ready():
	print(createCit().citName)
	pass # Replace with function body.

func createStarterCits():
	for i in range(starterNumber):
		createCit()
	pass

func createCit():
	var cit = preload("res://Scripts/Classes/Cit.gd").new()
	cit.generate()
	print(cit.citName)
	return cit
	pass



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
