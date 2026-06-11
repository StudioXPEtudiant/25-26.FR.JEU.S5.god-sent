extends RigidBody3D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var moveSpeed: float=19
	var left ="left"
	var right = "right"
	var up = "move up"
	var down = "down"
	var verticalAxe=Input.get_axis(up,down)
	var horizontalAxe=Input.get_axis(left,right)
	var orientationChanged: bool=false
	var newVelocity = get_linear_velocity()
	#print_debug(horizontalAxe)
	#print_debug(verticalAxe)
	#print_debug(linear_velocity)
	#print_debug(self.global_position)
	var direction=Vector3(horizontalAxe,0,verticalAxe).normalized()
	linear_velocity+=moveSpeed*direction*delta
	
	
	if verticalAxe==0 and horizontalAxe==0 :
		linear_velocity=linear_velocity*0.90
		
	
	
		
	#if orientationChanged  :
		##linear_velocity=newVelocity+externalimpulse
		#pass
	pass




