extends Area3D


@export_file("*.tscn","*.scn") var goTo
var hovered = false
@export var delay = 0.0
var wait = 0

func _process(delta):
	if Input.is_action_just_released("MouseDown") && wait == 0:
		wait = delay + 1
	if wait != 0:
		wait -= delta
		$AnimationPlayer.play("Close")
		if wait < 1:
			get_tree().change_scene_to_file(goTo)

func _on_mouse_entered():
	$AnimatedSprite3D.play("high")
	hovered = true


func _on_mouse_exited():
	$AnimatedSprite3D.play("low")
	hovered = false
