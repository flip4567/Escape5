@tool
extends Node3D





func remove_wall_up():
	$wall_up.queue_free()
func remove_wall_down():
	$wall_down.queue_free()
func remove_wall_left():
	$wall_left.queue_free()
func remove_wall_right():
	$wall_right.queue_free()
func remove_door_up():
	$door_up.queue_free()
func remove_door_down():
	$door_down.queue_free()
func remove_door_left():
	$door_left.queue_free()
func remove_door_right():
	$door_right.queue_free()
	
