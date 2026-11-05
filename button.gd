extends Button

@onready var inventory = get_node("/root/Node3D/Player/Area3D2/Inventory")
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#print_debug(inventory,"fffffffffffffffffffffffffffffffffffffffffb")
	pass # Replace with function body.
	print("ffffffffffffffffffffffff")
	print(get_path())
	print(get_tree().root.get_node("Player/Area3D2/Inventory"))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func switch():
	
	pass
