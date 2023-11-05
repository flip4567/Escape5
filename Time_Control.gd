extends Node
var startTime = 60
var sec = 60
var minute = 20



func game_time():
	if sec > 0:
		sec -= 1
		$Label.text = str(minute) + ":" + str(sec)
	else:
		sec = startTime - 1
		if minute > 0:
			minute -= 1
			$Label.text = str(minute) + ":" + str(sec)
		else:
			print("time up")
func _on_timer_timeout():
	game_time()
	pass # Replace with function body.
