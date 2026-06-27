@tool
class_name GalaxyData
extends Resource

@export_group("Generator")
@export var star_count: int
@export_tool_button("Regenerate") var generate_button = generate_and_save

var positions: PackedVector3Array
var types: PackedInt32Array


func generate_and_save() -> void:
	var galaxy := GalaxyData.new()

	positions.resize(star_count)
	types.resize(star_count)

	for i in star_count:
		positions[i] = Vector3(
			randf(),
			randf(),
			randf(),
		)

		types[i] = randi_range(0, 6)
