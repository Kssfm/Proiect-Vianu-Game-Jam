extends CharacterBody2D

var player_in_area:bool = false


func _process(_delta):
	if player_in_area == true:
		if Input.is_action_just_pressed("Interact"):
			run_dialouge("timeline")

func _on_chatd_edection_body_entered(body: Node2D) -> void:
	if body.has_method("player"):
		player_in_area = true

func run_dialouge(dialouge_string):
	Dialogic.start(dialouge_string)


func _on_chatd_edection_body_exited(body: Node2D) -> void:
	if body.has_method("player"):
		player_in_area = false
