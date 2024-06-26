class_name Units

# Set up variables common to all units
var unit_data = {
		# set up name, tracking and RP info
	"descriptive_data" : {
		"unitName" : "Placeholder",
		"unitCallsign" : "Placeholder",
		"unitStatus" : "Inactive",
		"unitClass" : "Placeholder",
		"unitCommanderDisc" : "Discord Username",
		"unitCommanderARMCO" : "ARMCO Username",
		"unitBackStory" : "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
		},
		# set up unit stats
	"unit_stats" : {
		"forceStrength" : 0,
		"armor" : 0,
		"speed" : 0,
		"range" : 0,
		"weightClass" : 0,
		"stealth" : false
		},
	"backend_unit_info" : {
		"locationX" : 0,
		"locationY" : 0,
		"direction" : "north",
		"deployed" : false,
		"rendered" : false,
		"createable" : true,
		},
		# set up class specific varaiables
	"equipment" : {
		"Equipment_01" : "Empty",
		"Equipment_02" : "Empty",
		"Equipment_03" : "Empty",
		"Equipment_04" : "Empty",
		"Equipment_05" : "Empty",
		"Equipment_06" : "Empty",
		"Equipment_07" : "Empty",
		"Equipment_08" : "Empty",
		"Equipment_09" : "Empty",
		"Equipment_10" : "Empty",
		"Equipment_11" : "Empty",
		"Equipment_12" : "Empty",
		},
		# set up unit statuses
	"statuses" :{
		"frontline" : 0,
		"weakspot" : 0
		}
}

#Functions
func takeDamage(damage): # function to deal damage to a unit
	var extract_stats = unit_data["unit_stats"]
	
	var damageDealt = damage - extract_stats["armor"]
	print("Damage Dealt:")
	print(damageDealt)
	extract_stats["forceStrength"] = extract_stats["forceStrength"] - damageDealt
	print("Remaining Force Strength:")
	print(extract_stats["forceStrength"])
	if extract_stats["forceStrength"] < 1:
		lethalDamage()
		

func move():
	pass

func attack():
	pass

func rotate(direction):
	var extract_backend = unit_data["backend_unit_info"]
	extract_backend["direction"] = direction

func breakout():
	pass

func mount():
	pass

func dismout():
	pass

func parachute():
	pass

func lethalDamage():
	var extract_descriptive = unit_data["descriptive_data"]
	extract_descriptive.unitStatus = "MIA"
