extends Control

func _on_campaign_select_pressed():
	get_tree().change_scene_to_file("res://campaign_select_menu.tscn") # change to campaign select menu once created


func _on_options_pressed():
	pass


func _on_exit_pressed():
	get_tree().quit()
