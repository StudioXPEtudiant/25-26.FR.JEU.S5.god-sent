extends Node

class_name Inventory 

@export var inv:Dictionary
signal itemAdded()
# Called when the node enters the scene tree for the first time.
func _ready():
	var dmg
	var weaponsize
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
func add_Items(itemName:String,ItemCount : int):
	var actualCount:int=inv.get(itemName,0)
	actualCount+=ItemCount
	itemAdded.emit()
	inv[itemName]=actualCount
	print_debug(actualCount,itemName,ItemCount)
	var ui=get_node("../Ui")
	print_debug(ui)
	
	pass
func f(itemName:String, ItemCount:int) :
	if inv.has(itemName) :
		if itemName=="Mimicry":
			var dmg=20
			var weaponsize=20
			print_debug("Returning Mimicry with 20,20")
			return[dmg,weaponsize]
		else:
			print_debug("error")
