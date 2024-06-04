extends Node2D

var saved_unit_list: Array
var NewUnit

@onready var selected_load_dropdown_path = $"UI/Unit Load Menu/Menu Margin/Menu Container/Margin Vbox/Single Unit Margin/VBoxContainer/OptionButton"

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


func _on_load_unit_pressed():
	var saved_unit_list = dir_contents("user://")
	$"UI/Unit Load Menu".visible = true
	selected_load_dropdown_path.clear()
	for unit in saved_unit_list:
		selected_load_dropdown_path.add_item(unit.trim_suffix(".txt"))


# Load Unit Menu
func _on_load_single_pressed():
	$"UI/Unit Load Menu".visible = false
	var selected_unit_load = selected_load_dropdown_path.text
	var unit_file = str(selected_unit_load,".txt")
	load_unit(unit_file)


func _on_load_multiple_pressed():
	$"UI/Unit Load Menu".visible = false
	for unit_file in saved_unit_list:
		load_unit(unit_file)
	pass # Replace with function body.

func _on_close_pressed():
	$"UI/Unit Load Menu".visible = false
	pass # Replace with function body.





func dir_contents(path):
	var dir = DirAccess.open(path)
	saved_unit_list.clear()
	if dir:
		dir.list_dir_begin()
		var file_name = dir.get_next()
		while file_name != "":
			if dir.current_is_dir():
				# print("Found directory: " + file_name)
				pass
			else:
				# print("Found file: " + file_name)
				saved_unit_list.append(file_name)
			file_name = dir.get_next()
	else:
		print("An error occurred when trying to access the path.")
	return saved_unit_list

func load_unit(unit_file):
	var data_received = load_JSON_file(unit_file)
	var unit_descriptive_data = data_received.descriptive_data
	var unitClass = unit_descriptive_data.unitClass
	print(unitClass)
	match unitClass:
		"RegularInfantry":
			NewUnit = RegularInfantry.new(data_received.backend_unit_info,data_received.descriptive_data,data_received.equipment,data_received.statuses,data_received.unit_stats)



func load_JSON_file(file_name):
	var file_path = str("user://",file_name)
	var file = FileAccess.open(file_path, FileAccess.READ)
	var json_string = file.get_as_text()
	var data_received
	
	var json = JSON.new()
	var error = json.parse(json_string)
	if error == OK:
		data_received = json.data
		if typeof(data_received) == TYPE_DICTIONARY:
			print(data_received) # Prints array
		else:
			print("Unexpected data")
	else:
		print("JSON Parse Error: ", json.get_error_message(), " in ", json_string, " at line ", json.get_error_line())

	return data_received



