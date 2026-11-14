extends Node

const LEVEL_1_PACKED: PackedScene = preload("res://scenes/level_1.tscn")
const LEVEL_2_PACKED: PackedScene = preload("res://scenes/level_2.tscn")


func _ready() -> void:
	load_scene(LEVEL_1_PACKED)
	


func load_scene(scene: PackedScene) -> void:
	for child in get_children():
		child.queue_free()
	add_child(scene.instantiate())
