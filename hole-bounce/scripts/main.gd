extends Node

const LEVEL_1_PACKED: PackedScene = preload("res://scenes/level_1.tscn")

const LEVEL_2_PACKED: PackedScene = preload("res://scenes/level_2.tscn")
const LEVEL_3_PACKED: PackedScene = preload("res://scenes/level_3.tscn")
const END_SCREEN_PACKED: PackedScene = preload("res://scenes/end_screen.tscn")

var current_level_number: int = 0

func _ready() -> void:
	switch_to_next_level()
	

func switch_to_next_level() -> void:
	match current_level_number:
		0:
			load_level(LEVEL_1_PACKED)
		1:
			load_level(LEVEL_2_PACKED)
		2:
			load_level(LEVEL_3_PACKED)
		3:
			load_level(END_SCREEN_PACKED)
	current_level_number += 1
	

func load_level(level: PackedScene) -> void:
	for child in get_children():
		child.queue_free()
	add_child(level.instantiate())
