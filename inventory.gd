extends Control
var gridContainer : GridContainer

# Called when the node enters the scene tree for the first time.
func _ready():
	gridContainer = $ScrollContainer/GridContainer
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func populateButtons():
	for i in 30:
		
