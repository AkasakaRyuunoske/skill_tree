extends TextureButton

class_name SkillNode

@onready var panel = $Panel
@onready var node_label = $description_container/description
@onready var connection_line = $connection_line

var level : int = 0:
	set(value):
		level = value
		node_label.text = "soslo / " + str(level)

func _ready():
	if get_parent() is SkillNode:
		connection_line.add_point(global_position + size/2)
		connection_line.add_point(get_parent().global_position + size/2)

func _on_pressed() -> void:
	level = min(level+1, 5)
	panel.show_behind_parent = true
	
	connection_line.default_color = Color(0.804, 0.027, 1.0, 1.0)
	
	var nodes = get_children()
	for node in nodes:
		if node is SkillNode and level == 1:
			node.disabled = false
