extends Node2D
## Day 1 test scene: proves text, input and web export all work.

@onready var label: Label = $Label

var gear: int = 2


func _ready() -> void:
	_update_label()


func _unhandled_input(event: InputEvent) -> void:
	if event is InputEventKey and event.pressed and not event.echo:
		if event.keycode == KEY_SHIFT:
			gear = mini(gear + 1, 4)
			_update_label()
		elif event.keycode == KEY_Q:
			gear = maxi(gear - 1, 1)
			_update_label()


func _update_label() -> void:
	label.text = "SHIFT HAPPENS\nGear: %d\nShift = up, Q = down" % gear
