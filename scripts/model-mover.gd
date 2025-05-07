@tool
extends Node

@export_tool_button("Randomize", "Callable") var randomize_action = random_shift_model
@export var max_rotation_degrees: int = 360
@export var max_scale_change: float = 0.1

func random_shift_model():
	randomize()
	var new_y_rotation = randi_range(0, max_rotation_degrees)
	self.rotation.y = deg_to_rad(new_y_rotation)
	
	var new_x_scale = randf_range(1.0-max_scale_change, 1.0+max_scale_change)
	var new_y_scale = randf_range(1.0-max_scale_change, 1.0+max_scale_change)
	var new_z_scale = randf_range(1.0-max_scale_change, 1.0+max_scale_change)
	self.scale = Vector3(new_x_scale, new_y_scale, new_z_scale)
	
