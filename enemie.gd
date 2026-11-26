extends CharacterBody3D
@export var speed :=2.0
@export var player: RigidBody3D # glisse ton joueur ici dans l'inspecteur
var gravity = ProjectSettings.get_setting("physics/3d/default_gravity")
func _physics_process(delta):
	if player == null:
		return
		#direction vers le joueur (on ignore la hauteur) 
	var direction = player.global_position - global_position
	direction.y = 0
	direction = direction.normalized()
	velocity.x = direction.x * speed
	velocity.z = direction.z * speed
	#gravité 
	if not is_on_floor():
		velocity.y -= gravity * delta
		# touner l'ennemi vers le joueur
	if abs(direction.x)>0.5||abs(direction.y)>0.5:
		look_at(global_position + direction, Vector3.UP)
		move_and_slide()
