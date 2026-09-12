class_name StatTypes
extends RefCounted

enum Stat {
	# Life Mods
	MAX_LIFE,
	LIFE_REGENERATION,
	
	# Mana Mods
	MAX_MANA,
	MANA_REGENERATION,
	
	# Defence Mods
	DEFENCE,
	
	# Action speed Mods
	ATTACK_SPEED,
	CAST_SPEED,
	MOVEMENT_SPEED,
	
	# Damage Mods
	GLOBAL_DAMAGE_MODIFIER,
	
	# Attribute Mods
	INTELLIGENCE,
	STRENGTH,
	DEXTERITY
}

enum ModifierEffect {
	FLAT, # +x to damage
	PERCENT_INCREASE, # x% increase damage
	MULTIPLIER_INCREASE, # x% damage multiplier / x% more damage
}
