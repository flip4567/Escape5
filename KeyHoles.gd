extends Node

@onready var key_hole = $KeyHole
@onready var key_hole_2 = $KeyHole2
@onready var key_hole_4 = $KeyHole4
@onready var key_hole_5 = $KeyHole5
@onready var key_hole_6 = $KeyHole6
@onready var key_hole_3 = $KeyHole3



func _process(delta):
	if key_hole == null && key_hole_2 == null && key_hole_3 == null && key_hole_4 == null && key_hole_5 == null && key_hole_6 == null:
		queue_free()












