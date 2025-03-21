@tool
class_name generate_controller_template

extends Node

enum ControllerType {
	PS4,
	XBOX,
	SWITCH
}

@export var controller_type: ControllerType
@export var name_of_file: String

var ps4_button_row_template: button_remap_row = preload("res://resources/controller_data/remap_rows/ps4_remap_row.tres")
var xbox_button_row_template: button_remap_row = preload("res://resources/controller_data/remap_rows/xbox_remap_row.tres")
var switch_button_row_template: button_remap_row = preload("res://resources/controller_data/remap_rows/switch_remap_row.tres")

var template: controller_resource

@export_tool_button("Generate", "Callable") var generate_action = _generate

func _generate():
	template = controller_resource.new()

	var config: Dictionary = {
		ControllerType.PS4: {
			"enum_source": button_enums.PS4Controller,
			"template": ps4_button_row_template,
			"holder_class": ps4_enums_holder,
			"button_property": "ps4_buttons"
		},
		ControllerType.XBOX: {
			"enum_source": button_enums.XboxController,
			"template": xbox_button_row_template,
			"holder_class": xbox_enums_holder,
			"button_property": "xbox_buttons"
		},
		ControllerType.SWITCH: {
			"enum_source": button_enums.SwitchController,
			"template": switch_button_row_template,
			"holder_class": switch_enums_holder,
			"button_property": "switch_buttons"
		}
	}

	var current_config = config[controller_type]
	var enum_source = current_config["enum_source"]
	var button_template = current_config["template"]
	var holder_class = current_config["holder_class"]
	var button_property = current_config["button_property"]

	for value: StringName in enum_source:
		var row: button_remap_row = button_template.duplicate(true)

		var button_holder = holder_class.new()
		var remap_holder = holder_class.new()

		button_holder.set(button_property, enum_source[value])
		remap_holder.set(button_property, enum_source[value])

		row.button = button_holder
		row.remap_button = remap_holder

		template.controller_buttons.append(row)

	var save_path = "res://resources/controller_data/" + name_of_file + ".tres"
	ResourceSaver.save(template, save_path)
	print("Generated controller template: " + name_of_file)
