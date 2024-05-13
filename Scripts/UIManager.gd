extends Control

var npc_list = [] # Your list of NPCs (NPC objects or dictionaries)

func _ready():
	pass



func updateList(citList):
	for n in $GridContainer.get_children():
		$GridContainer.remove_child(n)
		n.queue_free() 
		
	var column1 = Label.new()
	column1.text = "Name"
	var column2 = Label.new()
	column2.text = "Race"
	var column3 = Label.new()
	column3.text = "Age"
	
	$GridContainer.add_child(column1)
	$GridContainer.add_child(column2)
	$GridContainer.add_child(column3)
	
	for i in citList:
		var name = Label.new()
		name.text = i.citName
		var race = Label.new()
		race.text = i.citRace
		var age = Label.new()
		age.text = str(i.citAge)
		$GridContainer.add_child(name)
		$GridContainer.add_child(race)
		$GridContainer.add_child(age)
# Function to update the grid with NPC data
