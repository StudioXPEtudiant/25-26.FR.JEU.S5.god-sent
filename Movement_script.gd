extends RigidBody3D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var moveSpeed: float=25
	var left ="left"
	var right = "right"
	var up = "move up"
	var down = "down"
	var verticalAxe=Input.get_axis(down,up)
	var horizontalAxe=Input.get_axis(right,left)
	var orientationChanged: bool=false
	var newVelocity = get_linear_velocity()
	print_debug(horizontalAxe)
	print_debug(verticalAxe)
	var direction=Vector3(horizontalAxe,0,verticalAxe).normalized()
	linear_velocity+=moveSpeed*direction*delta
	if linear_velocity.length() >5:
		look_at(global_transform.origin - linear_velocity, Vector3.UP)
		orientationChanged=true
	else :
		orientationChanged=false
		
	if orientationChanged  :
		#linear_velocity=newVelocity+externalimpulse
		pass
	pass




