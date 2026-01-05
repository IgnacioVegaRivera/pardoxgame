extends Node3D


var boolOPT = 0
var time = 0
func _process(delta: float) -> void:
	time += 2*delta
	scale = Vector3(sin(time),cos(time)+1,sin(time))*20
	
	#if boolOPT == 0:
		#scale.y += .25*delta
		#if scale.y > 3:
			#scale.z += 5*delta
			#scale.x += 5*delta
		#if scale.y > 6:
			#boolOPT = 1
	#else:
		#scale.y -= .25*delta
		#scale.x -= 5*delta
		#scale.z -= 5*delta
		#if scale.y < 0.25:
			#boolOPT = 0
