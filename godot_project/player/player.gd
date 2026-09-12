extends Node

@export var username: String
@export var level: int
@export var xp: int
@export var stats: PlayerStats

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

func levelUp() -> void:
	pass
