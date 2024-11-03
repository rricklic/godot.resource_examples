class_name InventoryDialog extends PanelContainer

@onready var close_button: Button = %CloseButton
@onready var item_grid: ItemGrid = %ItemGrid

func _ready() -> void:
	close_button.pressed.connect(_on_close_button_pressed.bind())

func open(inventory: Inventory) -> void:
	item_grid.display(inventory.get_items())
	show()

func _on_close_button_pressed() -> void:
	hide()
