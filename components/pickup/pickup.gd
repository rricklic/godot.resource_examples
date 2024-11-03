class_name Pickup extends Node2D

@export var item: Item

@onready var area_2d: Area2D = $Area2D
@onready var sprite_2d: Sprite2D = $Sprite2D

func _ready() -> void:
	area_2d.body_entered.connect(_on_body_entered)
	sprite_2d.modulate = item.color

func _on_body_entered(body: Node2D) -> void:
	if (body.has_method("pickup_item")) :
		body.pickup_item(item)
		queue_free()
