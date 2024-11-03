class_name ItemSlot extends PanelContainer

@onready var item_icon: TextureRect = $ItemIcon

func display(item: Item) -> void:
	item_icon.texture = item.icon
	item_icon.modulate = item.color
