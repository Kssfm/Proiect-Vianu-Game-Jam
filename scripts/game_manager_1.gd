extends Node

@onready var label: Label = $CanvasLayer/Label

var score = 0



func _process(_delta: float) -> void:
	if Global.quest_1 == true:
		label.visible = true
		label.text = str(score) + "/5"

func update_fan():
	score += 1
	label.text = str(score) + "/5"
	if(score == 5):
		Global.quest_1 == false
		label.visible = false
