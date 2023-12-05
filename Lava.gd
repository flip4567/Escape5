@tool
extends Sprite3D

@export var speed:Vector3
var off:Vector3

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	off += speed * delta
	texture.noise.offset = off
