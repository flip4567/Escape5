extends Node3D

@export var state = 0
var selected = false
# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if state == 0:
		if selected:
			$AnimatedSprite3D.play("Select")
			if Input.is_action_just_pressed("MouseDown"):
				state = 1
		else:
			$AnimatedSprite3D.play("Blank")
	
	elif state == 1:
		$AnimatedSprite3D.play("O")
	elif state == 2:
		$AnimatedSprite3D.play("X")


func _on_area_3d_area_entered(area):
	selected = true


func _on_area_3d_area_exited(area):
	selected = false
