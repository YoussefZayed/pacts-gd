extends Control

var UnitClasses = ["Infantry", "Mechanized Infantry", "Armor", "Artillery", "Mech", "Air", "Orbital"]
var Infantry_Subclasses = ["Regular Infantry", "Power Armored Infantry", "Combat Medical Unit", "Irregular Unit", "Special Forces","Combat Engineers", "Sappers"]
var Mechanized_Infantry_Subclasses = ["Mechanized Infantry"]
var Armor_Subclasses = ["Logitistcs Truck", "Light Vehicle", "Light Battle Tank", "Main Battle Tank", "Heavy Battle Tank", "Super Heavy Tank"]
var Artillery_Subclasses = ["Light Artillery", "Heavy Artillery", "Self Propelled Artillery"]
var Mech_Subclasses = ["Light Mech", "Medium Mech", "Heavy Mech"]
var Air_Subclasses = ["Fighter", "VTOL Heavy Troop Airlift", "VTOL Multi-Purpose Airlift", "VTOL Heavy Lift","Heavy Aerospace Transport", "Bomber"]
var Orbital_Subclasses = ["Corvette", "Destroyer", "Cruiser", "Battleship"]
var Unit_Status = ["Active", "Inactive", "MIA", "Dead"]

@onready var UnitClass_Path = $"PanelContainer/MarginContainer/PanelContainer/Overall Unit Creation Vbox/Class Select Dropdown Container/UnitClassDropdown"
@onready var InfantryClass_Path = $"PanelContainer/MarginContainer/PanelContainer/Overall Unit Creation Vbox/Class Select Dropdown Container/InfantrySubclassDropdown"

@onready var Infantry_Path = $"PanelContainer/MarginContainer/PanelContainer/Overall Unit Creation Vbox/Class Select Dropdown Container/InfantrySubclassDropdown"
@onready var MechanizedInfantry_Path = $"PanelContainer/MarginContainer/PanelContainer/Overall Unit Creation Vbox/Class Select Dropdown Container/MechanizedInfantrySubclassDropdown"
@onready var Armor_Path = $"PanelContainer/MarginContainer/PanelContainer/Overall Unit Creation Vbox/Class Select Dropdown Container/ArmorSubclassDropdown"
@onready var Artillery_Path = $"PanelContainer/MarginContainer/PanelContainer/Overall Unit Creation Vbox/Class Select Dropdown Container/ArtillerySubclassDropdown"
@onready var Mech_Path = $"PanelContainer/MarginContainer/PanelContainer/Overall Unit Creation Vbox/Class Select Dropdown Container/MechSubclassDropdown"
@onready var Air_Path = $"PanelContainer/MarginContainer/PanelContainer/Overall Unit Creation Vbox/Class Select Dropdown Container/AirSubclassDropdown"
@onready var Orbital_Path = $"PanelContainer/MarginContainer/PanelContainer/Overall Unit Creation Vbox/Class Select Dropdown Container/OrbitalSubclassDropdown"
@onready var Status_Path = $"PanelContainer/MarginContainer/PanelContainer/Overall Unit Creation Vbox/Unit Form Common Vbox/Unit Owner Form Margins/Unit Owner Form Vbox/Unit Status Dropdown/Status Dropdown"

@onready var Infantry_common_Path = $"PanelContainer/MarginContainer/PanelContainer/Overall Unit Creation Vbox/Infantry Common Vbox"

@onready var RegularInfantry_Path = $"PanelContainer/MarginContainer/PanelContainer/Overall Unit Creation Vbox/Infantry Common Vbox/Regular Infantry Vbox"

# Called when the node enters the scene tree for the first time.
func _ready():
	for n in len(UnitClasses):
		UnitClass_Path.add_item(UnitClasses[n])
	for n in len(Infantry_Subclasses):
		Infantry_Path.add_item(Infantry_Subclasses[n])
	for n in len(Mechanized_Infantry_Subclasses):
		MechanizedInfantry_Path.add_item(Mechanized_Infantry_Subclasses[n])
	for n in len(Armor_Subclasses):
		Armor_Path.add_item(Armor_Subclasses[n])
	for n in len(Artillery_Subclasses):
		Artillery_Path.add_item(Artillery_Subclasses[n])
	for n in len(Mech_Subclasses):
		Mech_Path.add_item(Mech_Subclasses[n])
	for n in len(Air_Subclasses):
		Air_Path.add_item(Air_Subclasses[n])
	for n in len(Orbital_Subclasses):
		Orbital_Path.add_item(Orbital_Subclasses[n])
	for n in len(Unit_Status):
		Status_Path.add_item(Unit_Status[n])


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_unit_class_dropdown_item_selected(index):
	#ideally I want to move this to only trigger when the unit class dropdown is changed.
	Infantry_Path.visible  = false
	Infantry_common_Path.visible = false
	MechanizedInfantry_Path.visible = false
	Armor_Path.visible = false
	Artillery_Path.visible = false
	Mech_Path.visible = false
	Air_Path.visible = false
	Orbital_Path.visible = false
	
	match UnitClass_Path.selected:
		0:
			Infantry_Path.visible  = true
			Infantry_common_Path.visible = true
		1:
			MechanizedInfantry_Path.visible = true
		2:
			Armor_Path.visible = true
		3:
			Artillery_Path.visible = true
		4:
			Mech_Path.visible = true
		5:
			Air_Path.visible = true
		6:
			Orbital_Path.visible = true

func _on_infantry_subclass_dropdown_item_selected(index):
	RegularInfantry_Path.visible = false
	
	match InfantryClass_Path.selected:
		0:
			RegularInfantry_Path.visible  = true


func _on_export_unit_to_file_button_pressed():
	pass # Replace with function body.


func _on_export_unit_to_text_pressed():
	pass # Replace with function body.


func _on_return_to_main_menu_pressed():
	get_tree().change_scene_to_file("res://menu.tscn")
