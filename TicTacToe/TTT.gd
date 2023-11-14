extends Node3D

@export var TSlot: Array[Node3D]
var count = -1 # 0 means O first, -1 means X first
var win = 0
var rng = RandomNumberGenerator.new()
# 0 | 1 | 2 
#---+---+---
# 3 | 4 | 5
#---+---+---
# 6 | 7 | 8

# 0 = N/A | 1 = X | 2 = O

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _process(delta):
	var temp = 0
	for i in TSlot:       #Counts all empty cells, detects O's
		if i.state == 1:
			temp += 1

	if temp > count:      #When a new O is detected, a new X is randomly placed
		temp = count
		temp = rng.randi_range(0,8-count)
		for i in TSlot:   #Places an X in an empty slot
			if i.state == 0:
				if temp == 0:
					i.state = 2
					count += 1
				temp -= 1

	win = CheckWin()      #Creates an output if a win condition is met
	if win != 0: print(win)

	if count == 4:
		count = -1
		print("Reset")
		for i in TSlot:
			i.state = 0


func CheckWin():
	#Win Conditions BRUTE FORCE FTW!!!
	#012, 345, 678 -
	if TSlot[0].state == TSlot[1].state and TSlot[0].state == TSlot[2].state:
		if TSlot[0].state != 0:
			if TSlot[0].state != 0:
				return TSlot[0].state
	if TSlot[3].state == TSlot[4].state and TSlot[3].state == TSlot[5].state:
		if TSlot[3].state != 0:
			return TSlot[3].state
	if TSlot[6].state == TSlot[7].state and TSlot[6].state == TSlot[8].state:
		if TSlot[6].state != 0:
			return TSlot[6].state
	#036, 147, 258 |
	if TSlot[0].state == TSlot[3].state and TSlot[0].state == TSlot[6].state:
		if TSlot[0].state != 0:
			return TSlot[0].state
	if TSlot[1].state == TSlot[4].state and TSlot[1].state == TSlot[7].state:
		if TSlot[1].state != 0:
			return TSlot[1].state
	if TSlot[2].state == TSlot[5].state and TSlot[2].state == TSlot[8].state:
		if TSlot[2].state != 0:
			return TSlot[2].state
	#048, 246      X
	if TSlot[0].state == TSlot[4].state and TSlot[0].state == TSlot[8].state:
		if TSlot[0].state != 0:
			return TSlot[0].state
	if TSlot[2].state == TSlot[4].state and TSlot[2].state == TSlot[6].state:
		if TSlot[2].state != 0:
			return TSlot[2].state
	return 0
