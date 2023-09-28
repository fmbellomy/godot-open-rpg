extends Node


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	add_child(ResourceLoader.load("res://assets/maps/dylans.tscn").instantiate())
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
