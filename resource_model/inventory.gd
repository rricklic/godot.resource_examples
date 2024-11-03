class_name Inventory extends RefCounted

var _items: Array[Item] = []

func add_item(item: Item) -> void:
	print("Picked up ", item.name)
	_items.append(item)
	
func remove_item(item: Item) -> void:
	_items.erase(item)
	
func get_items() -> Array[Item]:
	return _items
