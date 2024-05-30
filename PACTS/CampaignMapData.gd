extends Node2D

var CDU = Units.new()

# Called when the node enters the scene tree for the first time.
func _ready():
	#var extract = (CDU.unit_data["descriptive_data"])
	#print(CDU.unit_data)
	#CDU.takeDamage(1)
	pass


func _on_return_to_main_menu_pressed():
	get_tree().change_scene_to_file("res://menu.tscn") # return to the main menu when button is pressed


func _on_options_pressed():
	$"UI/Settings Menu".visible = true
