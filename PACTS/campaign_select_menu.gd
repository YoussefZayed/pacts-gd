extends Control

func _on_join_campaign_pressed():
	pass # Replace with function body.


func _on_return_to_main_menu_pressed():
	get_tree().change_scene_to_file("res://menu.tscn")


func _on_blood_and_sand_pressed():
	get_tree().change_scene_to_file("res://CampaignMap.tscn")
