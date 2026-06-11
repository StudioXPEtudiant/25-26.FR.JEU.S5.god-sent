extends Node3D

@export var health: int
# Called when the node enters the scene tree for the first time.
func _ready():
	health=20
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass



func hurt(damageTaken: int, AttackType : String):
	if AttackType=="Fire" :
		print_debug("Enemy was attacked")
		health=health-damageTaken*1.5
		print_debug(health)
		print_debug("attack was :",AttackType)
		pass
	else :
		print_debug("Enemy was attacked")
		health=health-damageTaken
		print_debug(health)
		print_debug("attack was :",AttackType)
	
	
	pass
