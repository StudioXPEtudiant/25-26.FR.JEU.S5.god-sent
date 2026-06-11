extends Area3D
#var test= self.find_children("Shape")
#@export var weaponsize = Vector3(10,10,10)
#@export var weaponDamage= int(10)
#signal bald
#@export var AttackType= ("Fire")
## Called when the node enters the scene tree for the first time.
#func _ready():
	#print_debug("i am a :", test)
	#pass # Replace with function body.
#
#
## Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
	#pass
#
#
#
#
#func _on_body_entered(body : RigidBody3D):
	#
	#var IsPlayer=body.find_child("A")
	#
	#if IsPlayer :
		#self. reparent(body)
		#
		#
		#
	#pass # Replace with function body.
