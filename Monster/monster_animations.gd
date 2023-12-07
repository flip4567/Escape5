extends Node3D

enum monster_state{
	Idle,
	Direction,
	Move
}

const SPEED = 10
var state = monster_state.Move
var direction = Vector3.RIGHT

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	match state:
		monster_state.Idle:
			pass
		monster_state.Direction:
			direction = choose([Vector3.RIGHT, Vector3.LEFT, Vector3.FORWARD]) 
			state = choose([monster_state.Move, monster_state.Idle])
		monster_state.Move:
			move(delta)
			
func move(delta):
	position += direction * SPEED * delta
	
func choose(array):
	array.shuffle
	return array.front()

	
