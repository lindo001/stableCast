extends Node

var score = 0
@onready var label = $Label

func  _ready():
	Engine.time_scale = 0.1
func add_score():
	score +=1
	#label.text = "you have " + str(score)
