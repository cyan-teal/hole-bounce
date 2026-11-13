extends StaticBody2D

var collisionShape: CollisionShape2D


func _ready() -> void:
	collisionShape = $CollisionShape2D


func _process(delta: float) -> void:
	if Input.is_action_just_pressed("pass"):
		collisionShape.disabled = true
	elif Input.is_action_just_released("pass"):
		collisionShape.disabled = false
