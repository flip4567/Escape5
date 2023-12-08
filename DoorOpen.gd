extends MeshInstance3D

@onready var animation_player = $"../Monster3/AnimationPlayer"
var DoorLose = load("res://Menus/Ending_5.tscn")
var DoorWin = load("res://Menus/Ending_6.tscn")


func _ready():
	ItemManager.Marbles_Down.connect(MarbleWin)

func _on_area_3d_area_entered(area):
	
	$MeshInstance3D2.queue_free()
	
	animation_player.play("DoorDeath")
	await get_tree().create_timer(1.0).timeout 
	get_tree().change_scene_to_packed(DoorLose)
	
	pass # Replace with function body.
	
	
	
	
func MarbleWin():
	
	$MeshInstance3D2.queue_free()
	animation_player.play("DoorWin")
	await get_tree().create_timer(1.5).timeout 
	get_tree().change_scene_to_packed(DoorWin)
	
