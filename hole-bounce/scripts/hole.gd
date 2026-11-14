extends StaticBody2D

@export var inverted: bool = false

var collisionShape: CollisionShape2D


func _ready() -> void:
	collisionShape = $CollisionShape2D


func _process(delta: float) -> void:
	if Input.is_action_pressed("pass"):
		collisionShape.disabled = not inverted
	else:
		collisionShape.disabled = inverted
