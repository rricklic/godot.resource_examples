class_name Player extends CharacterBody2D

const SPEED = 300.0

var inventory: Inventory = Inventory.new()

func _physics_process(delta: float) -> void:
	var direction: float = Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	direction = Input.get_axis("ui_up", "ui_down")
	if direction:
		velocity.y = direction * SPEED
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)

	move_and_slide()

func pickup_item(item: Item) -> void:
	inventory.add_item(item)
