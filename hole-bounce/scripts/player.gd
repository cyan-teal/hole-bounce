extends RigidBody2D




const SPEED: float = 17_000.0
const ROTATIONAL_SPEED: float = 150_000.0
const BOUNCE_STRENGTH: float = 300.0



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_pressed("go_left"):
		apply_force(Vector2.LEFT * SPEED * delta)
		apply_torque(-ROTATIONAL_SPEED * delta)
	if Input.is_action_pressed("go_right"):
		apply_force(Vector2.RIGHT * SPEED * delta)
		apply_torque(ROTATIONAL_SPEED * delta)
	#if Input.is_action_pressed("test"):
		#position = get_global_mouse_position()
		#linear_velocity = Vector2.ZERO
	


func _integrate_forces(state: PhysicsDirectBodyState2D) -> void:
	var contact_count: int = state.get_contact_count()
	for contant in contact_count:
		var collision_normal: Vector2 = state.get_contact_local_normal(contant)
		state.apply_impulse(collision_normal * BOUNCE_STRENGTH)
