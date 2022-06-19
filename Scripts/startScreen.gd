extends Control


func _ready():
	$controls/startBtn.grab_focus()

func _physics_process(_delta: float) -> void:
	if !Global.controllOff:
		$controls/startBtn.grab_focus()
		Global.controllOff = true
		
	if Input.is_action_just_pressed("ui_up"):
		OS.window_fullscreen = not OS.window_fullscreen

func _on_startBtn_pressed():
	get_tree().change_scene("res://Levels/Level_01.tscn")

func _on_controlsBtn_pressed():
	var controlScreen = load("res://Scenes/controlScreen.tscn").instance()
	get_tree().current_scene.add_child(controlScreen)

func _on_quitBtn_pressed():
	get_tree().quit()

