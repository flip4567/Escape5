extends Node3D

@onready var animation_player = $AnimationPlayer
@export var delay = 0.0
@onready var node_3d = $"../Node3D"
@onready var Marker1 = $"../Node3D/Marker3D2"
@onready var Marker2 = $"../Node3D/Marker3D3"
@onready var Marker3 = $"../Node3D/Marker3D4"
@onready var Marker4 = $"../Node3D/Marker3D5"
@onready var Marker5 = $"../Node3D/Marker3D6"
@onready var Marker6 = $"../Node3D/Marker3D7"
@onready var Marker7 = $"../Node3D/Marker3D8"

var Marble1 = preload("res://3D models/marbles/marble_1.tscn")
var Marble2 = preload("res://3D models/marbles/marble_2.tscn")
var Marble3 = preload("res://3D models/marbles/marble_3.tscn")
var Marble4 = preload("res://3D models/marbles/marble_4.tscn")
var Marble5 = preload("res://3D models/marbles/marble_5.tscn")
var wait = 0


func _on_area_3d_area_entered(area):
	animation_player.play("falling")
	await get_tree().create_timer(1.0).timeout 
	queue_free()
	var Marble1Spawn = Marble1.instantiate()
	node_3d.add_child(Marble1Spawn)
	Marble1Spawn.position = Marker1.position
	
	var Marble2Spawn = Marble2.instantiate()
	node_3d.add_child(Marble2Spawn)
	Marble2Spawn.position = Marker2.position
	
	var Marble3Spawn = Marble3.instantiate()
	node_3d.add_child(Marble3Spawn)
	Marble3Spawn.position = Marker3.position
	
	var Marble4Spawn = Marble4.instantiate()
	node_3d.add_child(Marble4Spawn)
	Marble4Spawn.position = Marker4.position
	
	var Marble5Spawn = Marble5.instantiate()
	node_3d.add_child(Marble5Spawn)
	Marble5Spawn.position = Marker5.position
	
	var Marble6Spawn = Marble1.instantiate()
	node_3d.add_child(Marble6Spawn)
	Marble6Spawn.position = Marker6.position
	
	var Marble7Spawn = Marble2.instantiate()
	node_3d.add_child(Marble7Spawn)
	Marble7Spawn.position = Marker7.position
	
	ItemManager.Marbles_Down.emit()
	
	
	
