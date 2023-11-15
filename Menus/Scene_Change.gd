extends Button

@export_file("*.tscn","*.scn") var goTo

func _on_button_up():
	get_tree().change_scene_to_file(goTo)
