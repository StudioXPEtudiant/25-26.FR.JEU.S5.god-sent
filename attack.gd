extends Area3D
@export var weaponsize = Vector3(10,10,10)
@export var weaponDamage= int(1)
signal bald
var cooldown = 0
@export var AttackType= ("Fire")
@onready var inv=get_node("../Inventory")
signal cooldownStart
var AttackBoost:int
# Called when the node enters the scene tree for the first time.
func _ready():
	print_debug(AttackType)
	self.scale= weaponsize
	print_debug(self.scale)
	
	print_debug(inv,"50")
	pass # Replace with function body.

func update_cooldown():
	cooldown=0
	print_debug("cooldown update",cooldown)
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	if Input.is_action_just_pressed("attack") and cooldown==0:
		
		bald.emit()
		cooldown=1
		cooldownStart.emit()
		
	if Input.is_action_just_pressed("switch"):
		var result=inv.f("Sword",1)
		print_debug(result[0],result[1])
		
		weaponDamage=result[0]
		print_debug("weapon damage is",weaponDamage)
		print_debug("switching...")
	pass

func switch(a:String):
	print_debug(a,"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa")
	if a=="Sword":
		weaponDamage=20
	pass
func get_buff(a:String):
	if a =="totem1":
		print_debug("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF")
		AttackBoost=15
	pass
func _on_body_entered(body: CharacterBody3D):
	#print_debug("f")
	var hp = body.find_child("HP")
	
	if hp :
		hp.call("hurt",weaponDamage+AttackBoost, AttackType)
		print_debug(weaponDamage)
	pass # Replace with function body.
