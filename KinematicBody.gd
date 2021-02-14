extends KinematicBody

export var mass = 10
export var velocity = Vector3()

func _physics_process(delta):
	velocity = move_and_slide(velocity)
