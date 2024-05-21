extends Control

func _on_campaign_select_pressed():
	get_tree().change_scene_to_file("res://CampaignMap.tscn") # change to campaign select menu once created


func _on_options_pressed():
	get_tree().change_scene_to_file("res://CampaignMap.tscn") # change to options menu once created


func _on_exit_pressed():
	get_tree().quit()
