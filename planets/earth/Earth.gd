extends KinematicBody

export var mass = 10
export var velocity = Vector3()
export var radius = 1 # 6,371km

var interval = 10
var interval_count = 0
var max_vartex = 20
var vertex_count = 0
var ig

func _ready():
	ig = $Test
	ig.global_transform.origin = Vector3.ZERO
	ig.set_as_toplevel(true)

func _physics_process(delta):
	
	interval_count += 1
	if interval_count == interval:
		if vertex_count == 0:
			ig.begin(Mesh.PRIMITIVE_LINE_STRIP)
			ig.add_vertex(global_transform.origin)
		vertex_count += 1
		interval_count = 0
		ig.add_vertex(global_transform.origin)
	velocity = move_and_slide(velocity)
	if vertex_count == max_vartex:
		vertex_count = 0
		ig.end()
