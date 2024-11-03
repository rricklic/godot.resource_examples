class_name ItemGrid extends GridContainer

@export var item_slot_scene: PackedScene

func display(items: Array[Item]) -> void:
	for child: Node in get_children():
		child.queue_free()

	for item: Item in items:
		var item_slot: ItemSlot = item_slot_scene.instantiate()
		# NOTE: must add item_slot to tree before referencing its child nodes
		add_child(item_slot)
		item_slot.display(item)
