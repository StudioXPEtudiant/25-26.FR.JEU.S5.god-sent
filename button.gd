extends Button
signal switch
var whatami
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#print_debug(inventory,"fffffffffffffffffffffffffffffffffffffffffb")
	pass # Replace with function body.
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
func fill(a:String):
	print_debug("AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA FILLED",a)
	whatami=a
	pass

	
	


func _on_pressed() -> void:
	switch.emit(whatami)
	pass # Replace with function body.
