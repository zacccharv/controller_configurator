# Class that generates a table UI from a 2D array of data
class_name table_generator

extends HBoxContainer

@export var table_title: Label

@export var title_color: Color
@export var even_color: Color
@export var odd_color: Color

@export var r_controller_cfg: controller_config
@export var button_image_panel: PackedScene
@export var action_text: PackedScene

var title_style: StyleBoxFlat
var even_style: StyleBoxFlat
var odd_style: StyleBoxFlat
var do_once = false

const BOX_HEIGHT: int = 38

# Column titles
const COLUMN_TITLES = ["Original Button", "Remapped Button", "Action"]

# Called when the node enters the scene tree for the first time.
func _ready():
	# Create reusable styleboxes
	title_style = StyleBoxFlat.new()
	title_style.bg_color = title_color

	even_style = StyleBoxFlat.new()
	even_style.bg_color = even_color

	odd_style = StyleBoxFlat.new()
	odd_style.bg_color = odd_color

	generate_grid()

func generate_grid():
	# Clear the existing children
	var children = get_children()
	for child in children:
		child.free()

	table_title.text = r_controller_cfg.config_name

	# create the columns
	for column_index in range(3):
		var col: VBoxContainer = VBoxContainer.new()

		# Add column title
		generate_panel_text(0, col, COLUMN_TITLES[column_index], 20)

		# Add data rows
		for row in range(r_controller_cfg.config_controller.controller_buttons.size() - 1):
				var m_button_remap_row: button_remap_row = r_controller_cfg.config_controller.controller_buttons[row]

				# Adjust row index for styling (title is row 0)
				var display_row = row + 1

				match column_index:
					0: # Controller button
						var texture = get_button_value(m_button_remap_row.button)
						generate_panel_image(display_row, col, texture)
					1: # Remapped button
						var texture = get_button_value(m_button_remap_row.remap_button)
						generate_panel_image(display_row, col, texture)
					2: # Action description
						generate_panel_text_box(display_row, col)

		col.add_theme_constant_override("separation", 2)
		self.add_child(col)

func generate_panel_text_box(row: int, vbox: VBoxContainer):
	var panel = PanelContainer.new()

	panel.size_flags_horizontal = Control.SIZE_FILL
	var label: Node = action_text.instantiate()
	var le: input_to_config_data = label.get_node("./Panel/LineEdit")

	(label.get_node("./Panel/LineEdit") as LineEdit).text = r_controller_cfg.config_controller.controller_buttons[row].remap_action

	le.row_index = row
	le.r_controller_config = r_controller_cfg

	panel.add_child(label)

	# Use styleboxes instead of ColorRect
	var style: StyleBoxFlat
	if (row == 0):
		style = title_style
	elif (row % 2 == 0):
		style = even_style
	else:
		style = odd_style

	panel.add_theme_stylebox_override("panel", style)

	vbox.add_child(panel)

func generate_panel_text(row: int, vbox: VBoxContainer, text: String, font_size: int = 16):
	var panel = PanelContainer.new()
	var label = Label.new()

	panel.size_flags_horizontal = Control.SIZE_FILL
	label.custom_minimum_size = Vector2(100, BOX_HEIGHT)

	# Use styleboxes instead of ColorRect
	var style: StyleBoxFlat
	if (row == 0):
		style = title_style
	elif (row % 2 == 0):
		style = even_style
	else:
		style = odd_style

	panel.add_theme_stylebox_override("panel", style)

	var label_settings = LabelSettings.new()
	label_settings.font_size = font_size

	label.label_settings = label_settings
	label.text = text
	label.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
	label.add_theme_stylebox_override("normal", preload("res://resources/panel_style.tres"))

	panel.add_child(label)
	vbox.add_child(panel)

func generate_panel_image(row: int, vbox: VBoxContainer, texture: CompressedTexture2D):
	var panel = Panel.new()

	var node_val: Node = button_image_panel.instantiate()
	((node_val.get_node("Panel/TextureRect")) as TextureRect).texture = texture

	panel.size_flags_vertical = Control.SIZE_EXPAND
	panel.custom_minimum_size = Vector2(100, BOX_HEIGHT)
	panel.add_child(node_val)

	# Use styleboxes instead of ColorRect
	var style: StyleBoxFlat
	if (row == 0):
		style = title_style
	elif (row % 2 == 0):
		style = even_style
	else:
		style = odd_style

	panel.add_theme_stylebox_override("panel", style)

	vbox.add_child(panel)

func get_button_value(button_resource: Resource) -> CompressedTexture2D:
	var panel_value: CompressedTexture2D
	var fallback_path: String = "res://images/extra_icons/flair_disabled.png"

	if button_resource == null:
		push_error("Button resource is null")
		return load(fallback_path)

	if button_resource is keyboard_enums_holder:
		var index: int = (button_resource as keyboard_enums_holder).keyboard_keys
		panel_value = load_texture_safely(ButtonImageBinds.keyboard_button_image_bind_dict, index, fallback_path)
	elif button_resource is mouse_enums_holder:
		var index: int = (button_resource as mouse_enums_holder).mouse_buttons
		panel_value = load_texture_safely(ButtonImageBinds.mouse_button_image_bind_dict, index, fallback_path)
	elif button_resource is ps4_enums_holder:
		var index: int = (button_resource as ps4_enums_holder).ps4_buttons
		panel_value = load_texture_safely(ButtonImageBinds.ps4_button_image_bind_dict, index, fallback_path)
	elif button_resource is xbox_enums_holder:
		var index: int = (button_resource as xbox_enums_holder).xbox_buttons
		panel_value = load_texture_safely(ButtonImageBinds.xbox_button_image_bind_dict, index, fallback_path)
	elif button_resource is switch_enums_holder:
		var index: int = (button_resource as switch_enums_holder).switch_buttons
		panel_value = load_texture_safely(ButtonImageBinds.switch_button_image_bind_dict, index, fallback_path)
	else:
		push_error("Unknown button resource type: " + str(button_resource.get_class()))
		return load(fallback_path)

	return panel_value

func load_texture_safely(dict: Dictionary, index: int, fallback_string: String) -> CompressedTexture2D:
	if dict.has(index) and dict[index].has("image_path"):
		var path = dict[index]["image_path"]
		if ResourceLoader.exists(path):
			return dict[index]["image"]
		else:
			push_error("Texture not found at path: " + path)
	else:
		push_error("Invalid button index or missing image_path: " + str(index))

	return load(fallback_string) # Add a fallback texture path
