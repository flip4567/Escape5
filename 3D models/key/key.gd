extends Node3D




func _ready():
	ItemManager.key = self

func _on_area_3d_area_entered(area):
	
	queue_free()
	
