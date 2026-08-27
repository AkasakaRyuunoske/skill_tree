extends TextureButton

class_name SkillNode

@onready var panel = $Panel
@onready var node_label = $description_container/description
@onready var connection_line = $connection_line
@onready var skill_node: SkillNode = $"."

@onready var player = get_tree().get_first_node_in_group("player")
@onready var ui = get_tree().get_first_node_in_group("ui")

@export var level: int:
	set = set_level
@export var node_name: String
@export var icon: Image
@export var description_stats: Array[String]

signal update_player_stats_ui(player : Object)

func set_level(value):
	level = value
	node_label.text = "soslo / " + str(level)

func _ready():
	if description_stats.size() > 0:
		skill_node.tooltip_text = description_stats[0]
	
	if get_parent() is SkillNode:
		connection_line.add_point(global_position + size/2)
		connection_line.add_point(get_parent().global_position + size/2)

func _on_pressed() -> void:
	var old_level = level
	level = min(level+1, 5)
	
	if old_level != level:
		player.level += 1
		update_player_stats_ui.emit(player)
		
	panel.show_behind_parent = true
	
	connection_line.default_color = Color(0.804, 0.027, 1.0, 1.0)
	
	var nodes = get_children()
	for node in nodes:
		if node is SkillNode and level == 1:
			node.disabled = false
