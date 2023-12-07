extends Node3D

enum monster_state{
	Idle,
	Walk,
}

const SPEED = 10
var state = monster_state.Walk
var direction = Vector3.RIGHT

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	match state:
		monster_state.Idle:
			pass
		monster_state.Walk:
			direction = choose([Vector3.RIGHT, Vector3.LEFT, Vector3.FORWARD]) 
			state = choose([monster_state.Walk, monster_state.Idle])
			
func move(delta):
	position += direction * SPEED * delta
	
func choose(array):
	array.shuffle
	return array.front()

	
