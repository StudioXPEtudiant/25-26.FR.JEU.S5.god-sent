extends Node

class_name Inventory 

@export var inv:Dictionary

# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
func add_Items(itemName:String,ItemCount : int):
	var actualCount:int=inv.get(itemName,0)
	actualCount+=ItemCount
	
	inv[itemName]=actualCount
	print_debug(actualCount,itemName,ItemCount)
	pass
