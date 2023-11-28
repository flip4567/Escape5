extends Node3D
#@export var temp = 0
#
## Called when the node enters the scene tree for the first time.
#func _ready():
#	pass # Replace with function body.
#
#
## Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	$Monster1/metarig/Skeleton3D.find_bone("spine.006").rotation.x = temp

var skel
var id

func _ready():
	skel = get_node("Monster1/metarig/Skeleton3D")
	id = skel.find_bone("upperarm")
	print("bone id:", id)
	var parent = skel.get_bone_parent(id)
	print("bone parent id:", id)
	var t = skel.get_bone_pose(id)
	print("bone transform: ", t)
	set_process(true)

func _process(delta):
	var t = skel.get_bone_pose(id)
	t = t.rotated(Vector3(0.0, 1.0, 0.0), 0.1 * delta)
	skel.set_bone_pose(id, t)
