extends Area3D
@onready var door_1 = $"../../../door1"
@onready var door_2 = $"../../../door2"
@onready var animation_player = $"../../AnimationPlayer"
@onready var audio_stream_player_3d = $"../../AudioStreamPlayer3D"







func _on_area_entered(area):
		door_1.show()
		door_2.show()
		animation_player.play("RaiseAnim")
		audio_stream_player_3d.play()
		queue_free()

