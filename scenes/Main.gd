extends Node

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	TTS.speak("Hello, world.")
	
	$VBoxContainer/Label.text = "Can detect reader: %s\nHas reader: %s" % [
		TTS.can_detect_screen_reader, TTS.has_screen_reader
	]

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button_pressed():
	TTS.speak("Clicked the button")
