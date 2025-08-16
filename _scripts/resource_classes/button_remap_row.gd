class_name button_remap_row extends Resource

## @brief Original button_enum type
@export var button: Resource
## @brief The button_enum type that will be remap to the original button
@export var remap_button: Resource
## @brief The index of the button in the original button_enum
@export var remap_index: int
## @brief The name of the game action
@export var remap_action: String

## @brief Array of controllers that can be remapped
@export var remap_button_controller: Array[controller_config]
