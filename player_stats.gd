class_name PlayerStats
extends Resource

var base_stats: Dictionary = {}

func set_base_stat(stat: int, value: float) -> void:
	base_stats[stat] = value

func get_stat(stat: int) -> float:
	return base_stats.get(stat, 0.0)

func initialize_default_stats() -> void:
	base_stats = {
		Stats.MAX_LIFE: 100.0,
		Stats.MAX_MANA: 40.0,
		Stats.LIFE_REGENERATION: 1.0,
		Stats.MANA_REGENERATION: 1.0,
		Stats.GLOBAL_DAMAGE_MODIFIER: 10.0,
		Stats.ATTACK_SPEED: 1.0,
		Stats.CAST_SPEED: 1.0,
		Stats.MOVEMENT_SPEED: 100.0,
		Stats.STRENGTH: 10.0,
		Stats.DEXTERITY: 10.0,
		Stats.INTELLIGENCE: 10.0
	}
	
	print(base_stats)
