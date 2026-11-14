extends RigidBody2D




const SPEED: float = 17_000.0
const ROTATIONAL_SPEED: float = 150_000.0
const BOUNCE: float = 300.0



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_pressed("go_left"):
		apply_force(Vector2.LEFT * SPEED * delta)
		apply_torque(-ROTATIONAL_SPEED * delta)
	if Input.is_action_pressed("go_right"):
		apply_force(Vector2.RIGHT * SPEED * delta)
		apply_torque(ROTATIONAL_SPEED * delta)
	


func _on_body_entered(_body: Node) -> void:
	apply_impulse(Vector2.UP * BOUNCE)
