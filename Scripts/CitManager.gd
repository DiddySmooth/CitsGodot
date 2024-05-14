extends Node


var starterNumber = 6
var cits = []
var controlNode
# Called when the node enters the scene tree for the first time.
func _ready():
	controlNode = get_parent().get_node("Control")
	
	print(controlNode)
	createStarterCits()
	pass # Replace with function body.

func createStarterCits():
	for i in range(starterNumber):
		cits.append(createCit())
	controlNode.updateList(cits)

func addCit():
	cits.append(createCit())
	controlNode.updateList(cits)

func createCit():
	var cit = preload("res://Scripts/Classes/Cit.gd").new()
	cit.generate()
	return cit



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_button_down():
	pass # Replace with function body.
