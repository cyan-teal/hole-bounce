extends Node

const LEVEL_1_PACKED: PackedScene = preload("res://scenes/level_1.tscn")

const LEVEL_2_PACKED: PackedScene = preload("res://scenes/level_2.tscn")

var current_level_number: int = 1

func _ready() -> void:
	load_level(LEVEL_1_PACKED)
	


func load_level(level: PackedScene) -> void:
	for child in get_children():
		child.queue_free()
	add_child(level.instantiate())
