extends Button

signal level_up_player()

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_player_leveled_up(level, available_skill_points):
	print("_on_player_leveled_up called")
	text = "+ " + str(available_skill_points)

func _on_pressed() -> void:
	print("emmitting level_up_player")
	emit_signal("level_up_player")
