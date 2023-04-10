extends RigidBody3D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var power = Input.get_axis("ui_up", "ui_left")
	apply_force(Vector3(0, power * 100, 0))
	
