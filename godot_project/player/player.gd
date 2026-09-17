extends Node

@export var username: String
@export var level: int
@export var xp: int
@export var stats: PlayerStats
@export var available_skill_points: int

signal player_leveled_up(level, skill_points)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	level = 1
	
	stats = PlayerStats.new()
	stats.initialize_default_stats()
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func gainXp(xp: int) -> void:
	pass

func levelUp(new_level) -> void:
	if available_skill_points >= 1:
		available_skill_points += 1
	else:
		available_skill_points = 1
		
	level = min(new_level, 100)
	
	print("player_leveled_up emitted")
	emit_signal("player_leveled_up", level, available_skill_points)

func on_level_up_player():
	print("on_level_up_player called")
	levelUp(level+1)
