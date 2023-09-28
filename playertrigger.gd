@tool
extends Area2D
@export_file("*.tscn") var dest: String

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _get_configuration_warnings() -> PackedStringArray:
	var warnings = []
	if not dest or dest.is_empty():
		warnings.append("LevelChange must point to a level!")
	return warnings
	
func _on_area_entered(area: Area2D) -> void:
	if(area.get_parent().name == "PlayerGFX"):
		SceneHandler.goto_scene(dest)
	pass 
