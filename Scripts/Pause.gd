extends Node


func _ready():
	$Label.visible = false
	
func _process(_delta):
	if Input.is_action_just_pressed("paused"):
		if get_tree().paused == false:
			get_tree().paused = true
			$Label.visible = true
		else:
			get_tree().paused = false
			$Label.visible = false
