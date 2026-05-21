extends Area3D
var weaponsize = Vector3(10,10,10)
signal bald
# Called when the node enters the scene tree for the first time.
func _ready():
	self.scale= weaponsize
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("attack") :
		print_debug("verticalAxe")
		bald.emit()
		
	pass


func attack():
	
	
		
	pass
pass

func bodyEntered(CharacterBody3D):
	
	pass
