class_name RegularInfantry

# create infantry class, from which subclasses can be derived
extends Infantry

# Class Constructor
func _init(UnitStatus_Input,UnitOwnerDiscord_Input,UnitOwnerARMCO_Input,UnitName_Input,UnitCallsign_Input,UnitBackstory_Input,equipment,statuses):
	var extract_stats = unit_data["unit_stats"]
	extract_stats["forceStrength"] = 5
	extract_stats["armor"] = 0
	extract_stats["speed"] = 1
	extract_stats["range"] = 1
	extract_stats["weightClass"] = 1
	
	var extract_descriptive_data = unit_data["descriptive_data"]
	extract_descriptive_data["unitClass"] = "Regular Infantry"
	extract_descriptive_data["unitName"] = UnitName_Input
	extract_descriptive_data["unitCallsign"] = UnitCallsign_Input
	extract_descriptive_data["unitBackStory"] = UnitBackstory_Input
	extract_descriptive_data["unitCommanderDisc"] = UnitOwnerDiscord_Input
	extract_descriptive_data["unitCommanderARMCO"] = UnitOwnerARMCO_Input
	
	var Unit_Status = ["Active", "Inactive", "MIA", "Dead"]
	match UnitStatus_Input:
		0: 	extract_descriptive_data["unitStatus"] = Unit_Status[0]
		1: 	extract_descriptive_data["unitStatus"] = Unit_Status[1]
		2: 	extract_descriptive_data["unitStatus"] = Unit_Status[2]
		3: 	extract_descriptive_data["unitStatus"] = Unit_Status[3]
	
	unit_data["statuses"] = statuses
	unit_data["equipment"] = equipment

