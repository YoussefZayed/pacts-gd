extends Control

func _on_join_campaign_pressed(): # add functionality to submit a code to join a campaign
	pass # Replace with function body.

func _on_return_to_main_menu_pressed():
	get_tree().change_scene_to_file("res://menu.tscn") # return to the main menu when button is pressed


func _on_blood_and_sand_pressed():
	get_tree().change_scene_to_file("res://CampaignMap.tscn") # change scene to B&S campaign when button is pressed
