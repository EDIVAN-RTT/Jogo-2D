extends Label

func on_change_score(_score):
	$score.rect_size.x = Global.score

func _process(_delta: float) -> void:
	text = "000" + String(Global.fruits)
	if Global.fruits >= 10:
		text = "00" + String(Global.fruits)
	if Global.fruits >= 100:
		text = "0" + String(Global.fruits)
