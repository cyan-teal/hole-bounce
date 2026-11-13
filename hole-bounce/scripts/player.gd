extends RigidBody2D

const SPEED: float = 5000.0
const BOUNCE: float = 300.0


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_pressed("go_left"):
		apply_force(Vector2.LEFT * SPEED * delta)
	if Input.is_action_pressed("go_right"):
		apply_force(Vector2.RIGHT * SPEED * delta)
	pass


func _on_body_entered(body: Node) -> void:
	apply_impulse(Vector2.UP * BOUNCE)
