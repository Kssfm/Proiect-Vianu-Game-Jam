extends Sprite2D

var player_in_area_fan:bool = false
var able:bool = true


var fan = preload("res://scenes/fan_collectaible.tscn")

func _procces(_delta):
	if Global.quest_1 == true:
		if player_in_area_fan == true:
			if Input.is_action_just_pressed("Interact"):
					drop_fan()




func _on_pickable_area_body_entered(body: Node2D) -> void:
	if body.has_method("player"):
		player_in_area_fan = true


func _on_pickable_area_body_exited(body: Node2D) -> void:
	if body.has_method("player"):
		player_in_area_fan = false


func drop_fan():
	if able:
		var fan_instance = fan.instantiate()
		fan_instance.global_position = $Marker2D.global_position
		get_parent().add_child(fan_instance)
		able = false
