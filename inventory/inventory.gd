extends Control
var gridContainer : GridContainer

# Called when the node enters the scene tree for the first time.
func _ready():
	gridContainer = $ScrollContainer/GridContainer
	populateButtons()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func populateButtons():
	for i in 30:
		var packedScene = ResourceLoader.load("res://inventory/inventoryButton.tscn")
		var itemButton : Button = packedScene.instantiate()
		itemButton.connect("OnButtonClick", OnButtonClicked)
		$ScrollContainer/GridContainer.add_child(itemButton)
		
		
		
		
func OnButtonClicked():
			print("Clicked") 
