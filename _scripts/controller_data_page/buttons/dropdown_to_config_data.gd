class_name dropdown_to_config_data

extends OptionButton

@export var r_controller_config: controller_config
@export var row_index: int
@export var remap_index: int
var row_item_data

func _ready():
	self.connect("item_selected", Callable(self, "_on_ui_item_selected"))

func _on_ui_item_selected(index: int):
	r_controller_config.config_controller.controller_buttons[row_index].remap_button = r_controller_config.config_controller.controller_buttons[index].button
	r_controller_config.config_controller.controller_buttons[row_index].remap_index = index
	remap_index = index

	# Ensure all nested resources are unique and properly set up for saving
	var config_copy = r_controller_config.duplicate(true) # Deep duplicate to ensure all nested resources are unique
	config_copy.set_path_cache(r_controller_config.resource_path)

	# Save the resource
	var error = ResourceSaver.save(config_copy, r_controller_config.resource_path)

	if error != OK:
		printerr("Error saving resource: ", error)
	else:
		print("Successfully saved: remapped button to ", r_controller_config.resource_path + " at index ", index)
		# Update the original reference to match what was saved
		r_controller_config = config_copy