class_name RegularInfantry

extends Infantry

var Primary_Equipment_1 = "Empty"
var Primary_Equipment_2 = "Empty"
var Primary_Equipment_3 = "Empty"
var Primary_Equipment_4 = "Empty"
var Secondary_Equipment_1 = "Empty"
var Secondary_Equipment_2 = "Empty"
var Secondary_Equipment_3 = "Empty"
var Secondary_Equipment_4 = "Empty"

# Class Constructor
func _init(forceStrengthPass := 5, armorPass := 0, speedPass := 1, rangePass := 1, weightClassPass := 1):
		forceStrength = forceStrengthPass
		armor = armorPass
		speed = speedPass
		range = rangePass
		weightClass = weightClassPass
		

