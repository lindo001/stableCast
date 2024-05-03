extends Node

var score = 0
@onready var label = $Label

func add_score():
	score +=1
	label.text = "you have " + str(score)
