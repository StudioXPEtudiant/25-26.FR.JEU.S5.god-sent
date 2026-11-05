extends Label
@onready var Label1=get_node("../Label")
@onready var Label2=get_node("../Label2")
@onready var Label3=get_node("../Label3")
@onready var Label4=get_node("../Label4")
@onready var Label5=get_node("../Label5")
@onready var Label6=get_node("../Label6")
@onready var Label7=get_node("../Label7")
@onready var Label8=get_node("../Label8")
@onready var Label9=get_node("../Label9")
@onready var Label10=get_node("../Label10")
@onready var Label11=get_node("../Label11")
@onready var Label12=get_node("../Label11")
@onready var Label13=get_node("../Label12")
@onready var Label14=get_node("../Label13")
@onready var inventorySize=[Label1,Label2,Label3,Label4,Label5,Label6,Label7,Label8,Label9]
var isEmpty: bool
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print_debug(inventorySize)
	for element in inventorySize:
	
		element.isEmpty=true
		
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
func edit_text(a:String):
	for element in inventorySize:
		if element.isEmpty==true:
			element.text=a
			print_debug(a,"...")
			element.isEmpty=false
			break
		else:
			print_debug("aaaaaaaaaaaaaaaaaaaaaaaaaa")
			element.isEmpty=false
	
	pass
