extends Sprite2D

signal level_completed


func _ready() -> void:
	level_completed.connect(_ready)


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		level_completed.emit()
