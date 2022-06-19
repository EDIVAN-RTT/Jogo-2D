extends Node


var checkpoint_pos = null

func _ready():
	Global.fruits = 0

func _physics_process(_delta):
		if Input.is_action_just_pressed("ui_up"):
			OS.window_fullscreen = not OS.window_fullscreen
