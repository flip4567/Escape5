extends MeshInstance3D
@onready var door_1 = $"../../door1"
@onready var door_2 = $"../../door2"
@onready var audio_stream_player_3d = $"../AudioStreamPlayer3D"
var Playing = 1





func _on_area_3d_2_area_entered(area):
	if Playing == 1:
		door_1.show()
		door_2.show()
		$"../AnimationPlayer".play("RaiseAnim")
		audio_stream_player_3d.play()
		Playing = 0
		
	

func _on_area_3d_area_entered(area):
	if Playing == 1:
		door_1.show()
		door_2.show()
		Playing = 0
	
