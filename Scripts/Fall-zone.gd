extends Area2D

func _on_fallzone_body_entered(body):
	if body.name == "Player":
		if get_tree().change_scene("res://prefebs/GameOver.tscn") != OK:
			print("Algo deu Errado")
