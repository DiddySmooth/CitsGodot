class_name Cit

extends Node

var citName
var citRace = "Human"
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
	var maxAge = int(getRaceAge(citRace))
	citAge = randi() % maxAge
	print(citAge)
	pass

func getRaceAge(raceName):
	var file = FileAccess.get_file_as_string("res://Assets/Races.json")
	if file:
		var result = JSON.parse_string(file)
		for race in result:
			if race.has("Name") and race.Name == raceName:
				return(race.MaxAge)
				break
		
	else:
		print("Failed to load Race.tres")


func ageUp():
	checkIfDead()
	pass

func generate():
	generateStats()
	generateName()
	generateAge()
	
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
		print("Failed to open Names.txt")
	
func getStats():
	return(citStats)


func checkIfDead(): 
	var agePercent = (citAge / citRace.MaxAge) * 100
	
	var mortality_rate
	if citAge < 0:
		return "Invalid age"
	elif citAge <= 1:
		mortality_rate = 0.4  # 40% mortality rate
	elif citAge <= 5:
		mortality_rate = 0.25  # 25% mortality rate
	elif citAge <= 15:
		mortality_rate = 0.15  # 15% mortality rate
	elif citAge <= 45:
		mortality_rate = 0.2  # 20% mortality rate
	elif citAge <= 60:
		mortality_rate = 0.3  # 30% mortality rate
	elif citAge <= 75:
		mortality_rate = 0.4  # 40% mortality rate
	elif citAge <= 85:
		mortality_rate = 0.5  # 50% mortality rate
	elif citAge <= 100:
		mortality_rate = 0.6  # 60% mortality rate
	else:
		mortality_rate = 0.7  # 70% mortality rate for those over 100
	

