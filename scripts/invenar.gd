extends Node2D

const INV_SLOT = preload("uid://be2ix31bla8dr")

var row = 4
var col = 3
var items = []

func _ready():
	for x in range(row):
		items.append([])
		
		for y in range(col):
			items[x].append([])
			
			var instance = INV_SLOT.instantiate()
			instance.global_position = Vector2(x*50, y*50)
			instance.slot_nr = Vector2i(x, y)
			add_child(instance)
			items[x][y] = instance
