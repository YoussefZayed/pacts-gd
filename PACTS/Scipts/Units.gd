class_name Units

var locationX = 0
var locationY = 0
var direction = "north"
var forceStrength = 0
var armor = 0
var speed = 0
var range = 0
var weightClass = 0
var stealth = false

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
