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

var controller_source: controller_resource
var r_controller_config: controller_config


@export_tool_button("Generate", "Callable") var generate_action = _generate

func _generate():
	controller_source = controller_resource.new()
	r_controller_config = controller_config.new()

	var config: Dictionary = {
		ControllerType.PS4: {
			"enum_source": button_enums.PS4Controller,
			"controller_source": ps4_button_row_template,
			"holder_class": ps4_enums_holder,
			"button_property": "ps4_buttons"
		},
		ControllerType.XBOX: {
			"enum_source": button_enums.XboxController,
			"controller_source": xbox_button_row_template,
			"holder_class": xbox_enums_holder,
			"button_property": "xbox_buttons"
		},
		ControllerType.SWITCH: {
			"enum_source": button_enums.SwitchController,
			"controller_source": switch_button_row_template,
			"holder_class": switch_enums_holder,
			"button_property": "switch_buttons"
		}
	}

	var current_config = config[controller_type]
	var enum_source = current_config["enum_source"]
	var button_template = current_config["controller_source"]
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

		controller_source.controller_buttons.append(row)


	var save_path_resource = "res://resources/controller_data/" + name_of_file + "_source.tres"
	var save_path_config = "res://resources/controller_data/" + name_of_file + "_cfg.tres"
	ResourceSaver.save(controller_source, save_path_resource)

	r_controller_config.config_name = name_of_file
	r_controller_config.config_controller = controller_source

	ResourceSaver.save(r_controller_config, save_path_config)
