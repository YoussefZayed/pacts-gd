class_name Units

var unitName = "Placeholder"
var unitClass = "Placeholder"
var unitCommander = "Discord Username"
var unitBackSotry = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
var locationX = 0
var locationY = 0
var direction = "north"
var forceStrength = 0
var armor = 0
var speed = 0
var range = 0
var weightClass = 0
var stealth = false
var deployed = false
var rendered = false
var createable = true

func takeDamage(damage):
	var damageDealt = damage - armor
	print("Damage Dealt:")
	print(damageDealt)
	forceStrength = forceStrength - damageDealt
	print("Remaining Force Strength:")
	print(forceStrength)
	if forceStrength < 1:
		death()
		

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

func death():
	pass
