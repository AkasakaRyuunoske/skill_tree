extends Node

@export var level: int
@export var max_hp: int
@export var max_mana: int
@export var damage_increase: int

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	level = 1
	max_hp = 100
	max_mana = 40
	damage_increase = 0


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
