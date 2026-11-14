extends Sprite2D


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		get_tree().root.get_node("Main").switch_to_next_level()
