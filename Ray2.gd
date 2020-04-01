extends KinematicBody

func _ready():
	pass
	
func _physics_process(delta):
	if Input.is_action_just_pressed("fire"):
		var direct_state = get_world().direct_space_state
		var collision = direct_state.intersect_ray(transform.origin, Vector3(0, 0, -20))
		
		if collision:
			print(collision.position)
	
