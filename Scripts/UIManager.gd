extends Control

var npc_list = [] # Your list of NPCs (NPC objects or dictionaries)

func _ready():
	var column1 = Label.new()
	column1.text = "Name"
	var column2 = Label.new()
	column2.text = "Race"
	var column3 = Label.new()
	column3.text = "Age"
	$GridContainer.add_child(column1)
	$GridContainer.add_child(column2)
	$GridContainer.add_child(column3)
	pass



func updateList():
	var column1 = Label.new()
	column1.text = "Name"
	var column2 = Label.new()
	column2.text = "Race"
	var column3 = Label.new()
	column3.text = "Age"
# Function to update the grid with NPC data
