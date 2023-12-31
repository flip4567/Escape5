extends PanelContainer


const Slot = preload("res://inventory/slot.tscn")

@onready var item_grid: GridContainer = $MarginContainer/itemGrid

func set_inventory_data(inventory_data: InventoryData):
	
	inventory_data.inventory_updated.connect(populate_itemgrid)
	populate_itemgrid(inventory_data)

func populate_itemgrid(inventory_data: InventoryData) -> void:
	for child in item_grid.get_children():
		child.queue_free()
		
	for slot_data in inventory_data.slot_datas:
		var slot = Slot.instantiate()
		item_grid.add_child(slot)
		
		
		slot.slot_clicked.connect(inventory_data.on_slot_clicked)
		if slot_data:
			slot.set_slot_data(slot_data)
	pass
