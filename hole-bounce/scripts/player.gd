extends RigidBody2D

<<<<<<< HEAD
const SPEED: float = 5000.0
const BOUNCE: float = 500.0
=======
const SPEED: float = 17_000.0
const ROTATIONAL_SPEED: float = 150_000.0
const BOUNCE: float = 300.0
>>>>>>> 36a143e1150f1b0014d5a6467c4f7ce07dfa53d2


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_pressed("go_left"):
		apply_force(Vector2.LEFT * SPEED * delta)
		apply_torque(-ROTATIONAL_SPEED * delta)
	if Input.is_action_pressed("go_right"):
		apply_force(Vector2.RIGHT * SPEED * delta)
		apply_torque(ROTATIONAL_SPEED * delta)
	


func _on_body_entered(body: Node) -> void:
	apply_impulse(Vector2.UP * BOUNCE)
