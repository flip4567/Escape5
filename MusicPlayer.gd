extends Area3D
@onready var music = $"../Music"





func _on_area_entered(area):
	music.play()
	pass # Replace with function body.
