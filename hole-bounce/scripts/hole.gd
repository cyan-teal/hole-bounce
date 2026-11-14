extends StaticBody2D

@export var inverted: bool = false

var collisionShape: CollisionShape2D
var sprite: Sprite2D


func _ready() -> void:
	collisionShape = $CollisionShape2D
	sprite = $Sprite2D


func _process(delta: float) -> void:
	if Input.is_action_pressed("pass"):
		collisionShape.disabled = not inverted
		sprite.visible = inverted
	else:
		collisionShape.disabled = inverted
		sprite.visible = not inverted
