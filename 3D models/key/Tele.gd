extends Node3D

@onready var player = $"../Player"
@onready var marker_3d = $"../Marker3D"













func _on_area_3d_2_area_entered(area):
	player.global_position = marker_3d.global_position
	pass # Replace with function body.
