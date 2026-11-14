extends Sprite2D


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		get_tree().root.get_node("Main").load_level(get_tree().root.get_node("Main").LEVEL_2_PACKED)
