extends XROrigin3D

@onready var arrow : CSGCylinder3D = get_parent().get_node("Depth Assests").get_node("ArrowPad")
@onready var pointer : RayCast3D = get_node("Right/RayCast3D")
@onready var groundArea : Area3D = get_parent().get_node("Depth Assests").get_node("Floor").get_node("FloorArea")
#@onready var arrow : CSGCylinder3D = get_parent().get_node("ArrowPad")
#@onready var pointer : RayCast3D = get_node("Right/RayCast3D")
#@onready var groundArea : Area3D = get_parent().get_node("Floor/FloorArea")
var cursor_location = Vector3.ZERO
var right_joystick = Vector2.ZERO


func _physics_process(delta: float) -> void:
	if right_joystick.x > 0.2:
		arrow.rotation_degrees.y += 1
	elif right_joystick.x < -0.2:
		arrow.rotation_degrees.y -= 1	

	if pointer.is_colliding():
		var reciever = pointer.get_collider()
		if reciever == groundArea:
			cursor_location = pointer.get_collision_point()
			arrow.visible = true	
			arrow.global_position = cursor_location
	else:
		arrow.visible = false



func _on_right_input_vector_2_changed(name: String, value: Vector2) -> void:
	right_joystick = value

func _on_right_button_pressed(name: String) -> void:
	if name == "ax_button":
		if arrow.visible:
			global_position = arrow.global_position
			global_rotation.y = arrow.global_rotation.y
