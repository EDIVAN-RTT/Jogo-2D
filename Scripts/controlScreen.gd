extends Control


func _ready():
	pass


func _on_returnBtn_pressed():
	queue_free()
	Global.controllOff =  false
