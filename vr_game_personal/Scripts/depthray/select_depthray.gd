extends XRController3D

@onready var redBox: CSGBox3D = $Mover
@onready var linePath: RayCast3D = $rayPath

#func _ready():
	#connect("input_vector2_changed", self, "_move_input_vector2_changed")
#
#func _move_input_vector2_changed(action_name, vector):
	#if action_name == "primary_joystick_left" or action_name == "primary_joystick_right":
		#print("joysitck is ==", action_name," and ", vector )	
		#


#func _process(delta):
	###do something
	#var jam = get_joystick_vector()
	##if primary.vector.x > 0.2:
		##redBox.position.x += 1
