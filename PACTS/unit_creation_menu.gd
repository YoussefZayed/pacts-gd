extends Control

var UnitClasses = ["Infantry", "Mechanized Infantry", "Armor", "Artillery", "Mech", "Air", "Orbital"]
var Infantry_Subclasses = ["Regular Infantry", "Power Armored Infantry", "Combat Medical Unit", "Irregular Unit", "Special Forces","Combat Engineers", "Sappers"]
var Mechanized_Infantry_Subclasses = ["Mechanized Infantry"]
var Armor_Subclasses = ["Logitistcs Truck", "Light Vehicle", "Light Battle Tank", "Main Battle Tank", "Heavy Battle Tank", "Super Heavy Tank"]
var Artillery_Subclasses = ["Light Artillery", "Heavy Artillery", "Self Propelled Artillery"]
var Mech_Subclasses = ["Light Mech", "Medium Mech", "Heavy Mech"]
var Air_Subclasses = ["Fighter", "VTOL Heavy Troop Airlift", "VTOL Multi-Purpose Airlift", "VTOL Heavy Lift","Heavy Aerospace Transport", "Bomber"]
var Orbital_Subclasses = ["Corvette", "Destroyer", "Cruiser", "Battleship"]

# Called when the node enters the scene tree for the first time.
func _ready():
	for n in len(UnitClasses):
		$PanelContainer/MarginContainer/PanelContainer/HBoxContainer/UnitClassDropdown.add_item(UnitClasses[n])
	for n in len(Infantry_Subclasses):
		$PanelContainer/MarginContainer/PanelContainer/HBoxContainer/InfantrySubclassDropdown.add_item(Infantry_Subclasses[n])
	for n in len(Mechanized_Infantry_Subclasses):
		$PanelContainer/MarginContainer/PanelContainer/HBoxContainer/MechanizedInfantrySubclassDropdown.add_item(Mechanized_Infantry_Subclasses[n])
	for n in len(Armor_Subclasses):
		$PanelContainer/MarginContainer/PanelContainer/HBoxContainer/ArmorSubclassDropdown.add_item(Armor_Subclasses[n])
	for n in len(Artillery_Subclasses):
		$PanelContainer/MarginContainer/PanelContainer/HBoxContainer/ArtillerySubclassDropdown.add_item(Artillery_Subclasses[n])
	for n in len(Mech_Subclasses):
		$PanelContainer/MarginContainer/PanelContainer/HBoxContainer/MechSubclassDropdown.add_item(Mech_Subclasses[n])
	for n in len(Air_Subclasses):
		$PanelContainer/MarginContainer/PanelContainer/HBoxContainer/AirSubclassDropdown.add_item(Air_Subclasses[n])
	for n in len(Orbital_Subclasses):
		$PanelContainer/MarginContainer/PanelContainer/HBoxContainer/OrbitalSubclassDropdown.add_item(Orbital_Subclasses[n])


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#ideally I want to move this to only trigger when the unit class dropdown is changed.
	match $PanelContainer/MarginContainer/PanelContainer/HBoxContainer/UnitClassDropdown.selected:
		0:
			$PanelContainer/MarginContainer/PanelContainer/HBoxContainer/InfantrySubclassDropdown.visible  = true
			$PanelContainer/MarginContainer/PanelContainer/HBoxContainer/MechanizedInfantrySubclassDropdown.visible = false
			$PanelContainer/MarginContainer/PanelContainer/HBoxContainer/ArmorSubclassDropdown.visible = false
			$PanelContainer/MarginContainer/PanelContainer/HBoxContainer/ArtillerySubclassDropdown.visible = false
			$PanelContainer/MarginContainer/PanelContainer/HBoxContainer/MechSubclassDropdown.visible = false
			$PanelContainer/MarginContainer/PanelContainer/HBoxContainer/AirSubclassDropdown.visible = false
			$PanelContainer/MarginContainer/PanelContainer/HBoxContainer/OrbitalSubclassDropdown.visible = false
		1:
			$PanelContainer/MarginContainer/PanelContainer/HBoxContainer/InfantrySubclassDropdown.visible  = false
			$PanelContainer/MarginContainer/PanelContainer/HBoxContainer/MechanizedInfantrySubclassDropdown.visible = true
			$PanelContainer/MarginContainer/PanelContainer/HBoxContainer/ArmorSubclassDropdown.visible = false
			$PanelContainer/MarginContainer/PanelContainer/HBoxContainer/ArtillerySubclassDropdown.visible = false
			$PanelContainer/MarginContainer/PanelContainer/HBoxContainer/MechSubclassDropdown.visible = false
			$PanelContainer/MarginContainer/PanelContainer/HBoxContainer/AirSubclassDropdown.visible = false
			$PanelContainer/MarginContainer/PanelContainer/HBoxContainer/OrbitalSubclassDropdown.visible = false
		2:
			$PanelContainer/MarginContainer/PanelContainer/HBoxContainer/InfantrySubclassDropdown.visible  = false
			$PanelContainer/MarginContainer/PanelContainer/HBoxContainer/MechanizedInfantrySubclassDropdown.visible = false
			$PanelContainer/MarginContainer/PanelContainer/HBoxContainer/ArmorSubclassDropdown.visible = true
			$PanelContainer/MarginContainer/PanelContainer/HBoxContainer/ArtillerySubclassDropdown.visible = false
			$PanelContainer/MarginContainer/PanelContainer/HBoxContainer/MechSubclassDropdown.visible = false
			$PanelContainer/MarginContainer/PanelContainer/HBoxContainer/AirSubclassDropdown.visible = false
			$PanelContainer/MarginContainer/PanelContainer/HBoxContainer/OrbitalSubclassDropdown.visible = false
		3:
			$PanelContainer/MarginContainer/PanelContainer/HBoxContainer/InfantrySubclassDropdown.visible  = false
			$PanelContainer/MarginContainer/PanelContainer/HBoxContainer/MechanizedInfantrySubclassDropdown.visible = false
			$PanelContainer/MarginContainer/PanelContainer/HBoxContainer/ArmorSubclassDropdown.visible = false
			$PanelContainer/MarginContainer/PanelContainer/HBoxContainer/ArtillerySubclassDropdown.visible = true
			$PanelContainer/MarginContainer/PanelContainer/HBoxContainer/MechSubclassDropdown.visible = false
			$PanelContainer/MarginContainer/PanelContainer/HBoxContainer/AirSubclassDropdown.visible = false
			$PanelContainer/MarginContainer/PanelContainer/HBoxContainer/OrbitalSubclassDropdown.visible = false
		4:
			$PanelContainer/MarginContainer/PanelContainer/HBoxContainer/InfantrySubclassDropdown.visible  = false
			$PanelContainer/MarginContainer/PanelContainer/HBoxContainer/MechanizedInfantrySubclassDropdown.visible = false
			$PanelContainer/MarginContainer/PanelContainer/HBoxContainer/ArmorSubclassDropdown.visible = false
			$PanelContainer/MarginContainer/PanelContainer/HBoxContainer/ArtillerySubclassDropdown.visible = false
			$PanelContainer/MarginContainer/PanelContainer/HBoxContainer/MechSubclassDropdown.visible = true
			$PanelContainer/MarginContainer/PanelContainer/HBoxContainer/AirSubclassDropdown.visible = false
			$PanelContainer/MarginContainer/PanelContainer/HBoxContainer/OrbitalSubclassDropdown.visible = false
		5:
			$PanelContainer/MarginContainer/PanelContainer/HBoxContainer/InfantrySubclassDropdown.visible  = false
			$PanelContainer/MarginContainer/PanelContainer/HBoxContainer/MechanizedInfantrySubclassDropdown.visible = false
			$PanelContainer/MarginContainer/PanelContainer/HBoxContainer/ArmorSubclassDropdown.visible = false
			$PanelContainer/MarginContainer/PanelContainer/HBoxContainer/ArtillerySubclassDropdown.visible = false
			$PanelContainer/MarginContainer/PanelContainer/HBoxContainer/MechSubclassDropdown.visible = false
			$PanelContainer/MarginContainer/PanelContainer/HBoxContainer/AirSubclassDropdown.visible = true
			$PanelContainer/MarginContainer/PanelContainer/HBoxContainer/OrbitalSubclassDropdown.visible = false
		6:
			$PanelContainer/MarginContainer/PanelContainer/HBoxContainer/InfantrySubclassDropdown.visible  = false
			$PanelContainer/MarginContainer/PanelContainer/HBoxContainer/MechanizedInfantrySubclassDropdown.visible = false
			$PanelContainer/MarginContainer/PanelContainer/HBoxContainer/ArmorSubclassDropdown.visible = false
			$PanelContainer/MarginContainer/PanelContainer/HBoxContainer/ArtillerySubclassDropdown.visible = false
			$PanelContainer/MarginContainer/PanelContainer/HBoxContainer/MechSubclassDropdown.visible = false
			$PanelContainer/MarginContainer/PanelContainer/HBoxContainer/AirSubclassDropdown.visible = false
			$PanelContainer/MarginContainer/PanelContainer/HBoxContainer/OrbitalSubclassDropdown.visible = true
