extends RigidBody3D

@export var itemName : String
# Called when the node enters the scene tree for the first time.
func _ready():
	itemName="TESTNAME"
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_3d_body_entered(): 
	print_debug("body")
	#var inv=body.find_child("Inventory")
	#if inv!= null :
		
	
		#print_debug("AAAAAAAAAAAAAAAAAA")
	#inv.add_Items(itemName,1)
		
	
	
	pass # Replace with function body.
