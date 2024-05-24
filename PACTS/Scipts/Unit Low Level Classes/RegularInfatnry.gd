class_name RegularInfantry

# create infantry class, from which subclasses can be derived
extends Infantry

# set up class specific varaiables
var Primary_Equipment_1 = "Empty"
var Primary_Equipment_2 = "Empty"
var Primary_Equipment_3 = "Empty"
var Primary_Equipment_4 = "Empty"
var Secondary_Equipment_1 = "Empty"
var Secondary_Equipment_2 = "Empty"
var Secondary_Equipment_3 = "Empty"
var Secondary_Equipment_4 = "Empty"

# Class Constructor
func _init():
		forceStrength = 5
		armor = 0
		speed = 1
		range = 1
		weightClass = 1

