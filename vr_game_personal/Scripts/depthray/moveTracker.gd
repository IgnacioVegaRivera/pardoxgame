extends CSGBox3D

@export var dir = Vector3(0,0,1)
@export var speed = 2
var translation_speed = 3.5
var right_joystick = Vector2.ZERO
@onready var rayNode : RayCast3D = get_node("../rayPath")
var grabbedObject = null
var inBox = null
var curMoveBlock : CSGBox3D = null
var repoBlock = null

func _physics_process(delta: float) -> void:
	var rayForward = rayNode.global_transform.basis.y
	if right_joystick.y > 0.2:
		global_position += delta * translation_speed * -1 * rayForward
	elif right_joystick.y < -0.2:
		global_position +=  delta * translation_speed * rayForward
	
	if repoBlock == true:
		curMoveBlock.global_position = global_position
		
		


func _on_right_input_vector_2_changed(name: String, value: Vector2) -> void:
	right_joystick = value



func _on_right_button_pressed(name: String) -> void:
	if name == "grip_click":
		grabbedObject = true
		print("++++++Clicking the trigger")
		print(grabbedObject)
		if grabbedObject == true and inBox == true:
			repoBlock = true
		



func _on_right_button_released(name: String) -> void:
	if name == "grip_click":
		grabbedObject = false
		print("------Releasing the trigger")
		print(grabbedObject)
		repoBlock = false


func _on_area_3d_area_entered(area: Area3D) -> void:
	var specialBox = area.get_parent()
	curMoveBlock = specialBox
	inBox = true


func _on_area_3d_area_exited(area: Area3D) -> void:
	inBox = false
	repoBlock = false
