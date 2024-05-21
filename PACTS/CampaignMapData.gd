extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.





func _on_return_to_main_menu_pressed():
	get_tree().change_scene_to_file("res://menu.tscn")
