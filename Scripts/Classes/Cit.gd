class_name Cit

extends Node

var citName
var citRace
var citJob
var citAge

var citStats = {
	"str": 0,
	"dex": 0,
	"con": 0,
	"int": 0,
	"wis": 0,
	"cha": 0,
}

func generateAge():
	var file = FileAccess.open("res://Assets/Races.txt", FileAccess.READ)
	pass

func ageUp():
	pass

func generate():
	generateStats()
	generateName()
	
func generateStats():
	randomize()
	citStats.str = randi_range(8, 20)
	citStats.dex = randi_range(8, 20)
	citStats.con = randi_range(8, 20)
	citStats.int = randi_range(8, 20)
	citStats.wis = randi_range(8, 20)
	citStats.cha = randi_range(8, 20)

func generateName():
	var file = FileAccess.open("res://Assets/Names.txt", FileAccess.READ)
	if file:
		var names = []
		while not file.eof_reached():
			var line = file.get_line().strip_edges()
			if line != "":
				names.append(line)
		file.close()
		
		if names.size() > 0:
			var random_index = randi() % names.size()
			var random_name = names[random_index]
			citName = random_name
		else:
			print("The file is empty or contains no valid names.")
	else:
		print("Failed to open the file.")
	
func getStats():
	return(citStats)


