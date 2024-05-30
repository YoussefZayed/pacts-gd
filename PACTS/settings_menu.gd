extends Control

@onready var window_mode_button = $"MarginContainer/TabContainer/-Video-/MarginContainer/Video Vbox/Video Hbox/window mode"

const WINDOW_MODE_ARRAY : Array[String] = [
	"Window Mode",
	"Borderless Window",
	"Full-screeen",
	"Borderless Full-Screen"
]

# Called when the node enters the scene tree for the first time.
func _ready():
	for mode in (WINDOW_MODE_ARRAY):
		window_mode_button.add_item(mode)
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_music_volume_drag_ended(value_changed):
	var music_volume = $"MarginContainer/TabContainer/Audio/MarginContainer/Audio Vbox/Music Hbox/Music Volume".value
	$"MarginContainer/TabContainer/Audio/MarginContainer/Audio Vbox/Music Hbox/Volume Indicator".text = str(music_volume)
	AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Music"),music_volume-20)

func _on_sfx_volume_drag_ended(value_changed):
	var SFX_volume = $"MarginContainer/TabContainer/Audio/MarginContainer/Audio Vbox/SFX HBox/SFX Volume".value
	$"MarginContainer/TabContainer/Audio/MarginContainer/Audio Vbox/SFX HBox/Volume Indicator".text = str(SFX_volume)
	AudioServer.set_bus_volume_db(AudioServer.get_bus_index("SFX"),SFX_volume-20)


func _on_dialogue_volume_drag_ended(value_changed):
	var Dialogue_volume = $"MarginContainer/TabContainer/Audio/MarginContainer/Audio Vbox/Dialogue HBox/Dialogue Volume".value
	$"MarginContainer/TabContainer/Audio/MarginContainer/Audio Vbox/Dialogue HBox/Volume Indicator".text = str(Dialogue_volume)
	AudioServer.set_bus_volume_db(AudioServer.get_bus_index("SFX"),Dialogue_volume-20)


func _on_window_mode_item_selected(index : int) -> void:
	match index:

		0: # Window
			DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)
			DisplayServer.window_set_flag(DisplayServer.WINDOW_FLAG_BORDERLESS,false)
		1: # Borderless Window
			DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)
			DisplayServer.window_set_flag(DisplayServer.WINDOW_FLAG_BORDERLESS,true)
		2: # Fullscreen
			DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
			DisplayServer.window_set_flag(DisplayServer.WINDOW_FLAG_BORDERLESS,false)
		3: # Borderless Fullscreen
			DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
			DisplayServer.window_set_flag(DisplayServer.WINDOW_FLAG_BORDERLESS,true)
		


func _on_button_pressed():
	$".".visible = false
