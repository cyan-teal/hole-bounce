extends Camera2D


func _process(delta: float) -> void:
	self.scale = $"..".linear_velocity.length_squared() / 100
