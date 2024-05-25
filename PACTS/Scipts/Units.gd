class_name Units

# Set up variables common to all units
var unit_data = {
	"descriptive_data" : {
		"unitName" : "Placeholder",
		"unitCallsign" : "Placeholder",
		"unitStatus" : "Inactive",
		"unitClass" : "Placeholder",
		"unitCommanderDisc" : "Discord Username",
		"unitCommanderARMCO" : "ARMCO Username",
		"unitBackStory" : "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
		},
	"unit_stats" : {
		"forceStrength" : 0,
		"armor" : 0,
		"speed" : 0,
		"range" : 0,
		"weightClass" : 0,
		"stealth" : false
		},
	"backend_unit info" : {
		"locationX" : 0,
		"locationY" : 0,
		"direction" : "north",
		"deployed" : false,
		"rendered" : false,
		"createable" : true,
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

func rotate():
	pass

func breakout():
	pass

func mount():
	pass

func dismout():
	pass

func parachute():
	pass

func lethalDamage():
	pass
