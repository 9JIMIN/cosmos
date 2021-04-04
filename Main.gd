extends Node

var nodes
const g_const = 0.005

func _ready():
	nodes = get_tree().get_nodes_in_group('Gravity')
		
	
func _physics_process(delta):
	for i in range(len(nodes)):
		for j in range(i+1, len(nodes)):
			var betweenVec = nodes[i].global_transform.origin - nodes[j].global_transform.origin
			var forceDir = betweenVec.normalized()
			var distance = betweenVec.length()
			var force = forceDir * nodes[i].mass * nodes[j].mass / (distance * distance) * g_const
			nodes[i].velocity -= force/nodes[i].mass
			nodes[j].velocity += force/nodes[j].mass
#	$Orbit.clear() 
#	$Orbit.begin(Mes
#	for n in nodes:
#		var ig = n.get_child(2)
#		ig.add_vertex(n.transform.origin)
