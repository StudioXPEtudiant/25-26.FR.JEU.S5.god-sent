extends Area3D
@export var weaponsize = Vector3(10,10,10)
@export var weaponDamage= int(10)
signal bald
@export var AttackType= ("Fire")
var inv
# Called when the node enters the scene tree for the first time.
func _ready():
	print_debug(AttackType)
	self.scale= weaponsize
	print_debug(self.scale)
	var inv=get_node("../Inventory")
	print_debug(inv,"50")
	pass # Replace with function body.

func update_weapon():
	
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("attack") :
		
		bald.emit()
	if Input.is_action_just_pressed("switch"):
		inv.f("BALD",1)
		print_debug("switching...")
	pass



func _on_body_entered(body: CharacterBody3D):
	print_debug("f")
	var hp = body.find_child("HP")
	
	if hp :
		hp.call("hurt",weaponDamage, AttackType)
		print_debug("Tried damaging the bad guy")
	pass # Replace with function body.
