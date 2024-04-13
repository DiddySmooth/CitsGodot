class_name Cit

extends Node




var citName
var citRace
var citStr
var citDex 
var citCon
var citInt
var citWis
var citCha

func _ready():
	generateStats()
	
	
func generateStats():
	randomize()
	citStr = randi_range(8, 20)
	citDex = randi_range(8, 20)
	citCon = randi_range(8, 20)
	citWis = randi_range(8, 20)
	citInt = randi_range(8, 20)
	citCha = randi_range(8, 20)

func getStats():
	print(citStr)
	print(citDex)
	print(citCon)
	print(citInt)
	print(citWis)
	print(citCha)
