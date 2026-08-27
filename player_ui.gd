extends Label

@onready var player = get_tree().get_first_node_in_group("player")
@onready var nodes = get_tree().get_nodes_in_group("nodes")


const TITLE : String = "Stats: \n"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for node in nodes:
		node.update_player_stats_ui.connect(_on_update_player_stats_ui)
	
	_on_update_player_stats_ui(player)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_update_player_stats_ui(player):
	print("updating stats....")
	text = TITLE \
	+ "Level: " + str(player.level) + "\n" \
	+ "Max HP: " + str(player.max_hp) + "\n" \
	+ "Max Mana: " + str(player.max_mana) + "\n" \
	+ "Damage Increase: " + str(player.damage_increase) 
	
