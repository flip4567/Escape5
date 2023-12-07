extends Area3D

var BackWin = load("res://Menus/Ending_C.tscn")





func _on_area_entered(area):
	get_tree().change_scene_to_packed(BackWin)
	
	pass # Replace with function body.
