extends CollisionShape3D

@export var VehicleBody: PhysicsBody3D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	var axis = Input.get_axis("ui_down", "ui_up")
	
	var front = -self.global_transform.basis.z
	$Area3D.disable_mode
	var areas = $Area3D.get_overlapping_bodies()
	
	if areas.size() > 0:
		VehicleBody.apply_force(front * axis * 5000)
	else:
		pass
		print("not on the ground!")	


func _on_area_3d_area_entered(area):
	print(area)
	print("Entered!")
