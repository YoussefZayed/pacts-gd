class_name RegularInfantry

# create infantry class, from which subclasses can be derived
extends Infantry

# Class Constructor
func _init(backend_unit_info,descriptive_data,equipment,statuses,unit_stats):
	unit_data["backend_unit_info"] = backend_unit_info
	unit_data["descriptive_data"] = descriptive_data
	unit_data["equipment"] = equipment
	unit_data["statuses"] = statuses
	unit_data["unit_stats"] = unit_stats
