extends PanelContainer


const Slot = preload("res://inventory/slot.tscn")

@onready var item_grid: GridContainer = $MarginContainer/itemGird

func set_inventory_data(inventory_data: InventoryData):
	populate_itemgrid(inventory_data.slot_datas)

func populate_itemgrid(slot_datas: Array[SlotData]) -> void:
	for child in item_grid.get_children():
		child.queue_free()
		
	for slot_data in slot_datas:
		var slot = Slot.instantiate()
		item_grid.add_child(slot)
		
		if slot_data:
			slot.set_slot_data(slot_data)
	pass
