extends Node

var player
var cam
var Key = preload("res://3D models/key/key.tscn")
var Marker = preload("res://3D models/Marker/Marker_Equip.tscn")

func use_slot_data(slot_data: SlotData):
	var item_data = slot_data.item_data
	
	if item_data.name == "Key":
		var Key1 = Key.instantiate()
		cam.add_child(Key1)
		Key1.position = Vector3(0.244,-0.222,-0.566)
		Key1.rotation = Vector3(.5, -.20,-90 )
	if item_data.name == "Marker":
		var Marker_Equip = Marker.instantiate()
		cam.add_child(Marker_Equip)
		Marker_Equip.position = Vector3(-0.061,-0.5,-0.393)
		Marker_Equip.rotation = Vector3(-15, 59.6,-85)
		
