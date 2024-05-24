extends Control

var rng = RandomNumberGenerator.new()
var welcomeMessage = [
"May the Force be with you.",
"You either die a hero or live long enough to see yourself become the villain.",
"I’m just here for the gasoline.",
"Roads? Where we’re going, we don’t need roads.",
"Your scientists were so preoccupied with whether or not they could, they didn’t stop to think if they should.",
"I'll be back.",
"This mission is too important for me to allow you to jeopardize it.",
"I can do this all day.",
"A day may come when the courage of men fails, when we forget our friends and forsake all bonds of fellowship. But it is not this day!",
"Do. Or do not. There is no try.",
"It is possible to commit no errors and still lose. That is not a weakness. That is life.",
"Kaboom baby!",
"In the pipe, five by five.",
"Splash one, bandit down.",
"FLY. FIGHT. WIN.",
"Taget locked",
"Whoever said the sky's the limit never left the ground.",
"Where we're going, we don't need seatbelts.",
"Runway’s green as grass and we’re ready for takeoff in ten!",
"In the rear, with the gear.",
"We require additional pylons",
"Ready to roll out",
"Oh. Hi. So. How are you holding up? BECAUSE I'M A POTATO!",
"Return, refit, and redeploy.",
"Incoming friendly fire! Dodge…or don’t. Your call.",
"That’s one more victory for the right side of history!",
"If I must fall, I will rise each time a better man.",
"10 spears go to battle and 9 shatter… did war forge the 10th or did it refuse to break?",
"It's the next one... Always the next one",
"Life before Death, Strength before Weakness and Journey before Destination"
]

func _ready():
	var ran_num = rng.randf_range(0, len(welcomeMessage))
	$"Overall Margins/VBoxContainer/Bottom Hbox/AspectRatioContainer/TextEdit".text = welcomeMessage[ran_num]

func _on_campaign_select_pressed():
	get_tree().change_scene_to_file("res://campaign_select_menu.tscn") # change to campaign select menu once created


func _on_options_pressed():
	pass


func _on_exit_pressed():
	get_tree().quit()
