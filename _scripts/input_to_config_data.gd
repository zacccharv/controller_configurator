class_name input_to_config_data

extends Control

@export var r_controller_config: controller_config
@export var row_index: int
var row_item_data

func _ready():
	self.connect("text_changed", Callable(self, "_on_ui_text_changed"))

func _on_ui_text_changed(text: String):
	if !text.is_empty():
		# Make your changes
		r_controller_config.config_controller.controller_buttons[row_index].remap_action = text

		# Ensure all nested resources are unique and properly set up for saving
		var config_copy = r_controller_config.duplicate(true) # Deep duplicate to ensure all nested resources are unique
		config_copy.take_over_path(r_controller_config.resource_path)

		# Save the resource
		var error = ResourceSaver.save(config_copy, r_controller_config.resource_path)

		if error != OK:
			printerr("Error saving resource: ", error)
		else:
			print("Successfully saved: ", text, " to ", r_controller_config.resource_path)
			# Update the original reference to match what was saved
			r_controller_config = config_copy
