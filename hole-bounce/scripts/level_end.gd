extends Sprite2D


var used: bool

func _ready() -> void:
	used = false


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.name == "Player" and not used:
		used = true
		get_tree().root.get_node("Main").switch_to_next_level()
