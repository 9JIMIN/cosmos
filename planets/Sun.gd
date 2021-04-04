extends KinematicBody

export var mass = 3000
export var velocity = Vector3()
export var radius = 109.3 # 696,340km

func _physics_process(delta):
	velocity = move_and_slide(velocity)
