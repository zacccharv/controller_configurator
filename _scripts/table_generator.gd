# Class that generates a table UI from a 2D array of data
class_name table_generator

extends HBoxContainer

@export var title_color: Color
@export var even_color: Color
@export var odd_color: Color

@export var controller_cfg: controller_config
@export var button_image_panel: PackedScene
const box_height: int = 35

# Called when the node enters the scene tree for the first time.
func _ready():
	generate_grid()

func generate_grid():
	# create the columns
	for column_index in range(3):
		var col: VBoxContainer = VBoxContainer.new()

		for row in controller_cfg.config_controller.controller_buttons.size():
			var value
			var m_button_remap_row: button_remap_row = controller_cfg.config_controller.controller_buttons[row]

			if column_index == 0:
				value = get_button_value(m_button_remap_row, m_button_remap_row.button)
				generate_panel_image(row, col, value)
			elif column_index == 1:
				value = get_button_value(m_button_remap_row, m_button_remap_row.remap_button)
				generate_panel_image(row, col, value)
			elif column_index == 2:
				value = "ACTION"
				generate_panel_text(row, col, value)

			# Add panel to vbox keeping track of the row to recolor on odd/even rows
			# panels generated a column at a time

		col.add_theme_constant_override("separation", 2)
		self.add_child(col)

func generate_panel_text(row: int, vbox: VBoxContainer, text: String):
	var panel = PanelContainer.new()
	var label = Label.new()

	panel.size_flags_horizontal = Control.SIZE_FILL
	label.custom_minimum_size = Vector2(100, box_height)

	# Use styleboxes instead of ColorRect
	var style = StyleBoxFlat.new()
	if (row == 0):
		style.bg_color = title_color
	elif (row % 2 == 0):
		style.bg_color = even_color
	else:
		style.bg_color = odd_color

	panel.add_theme_stylebox_override("panel", style)

	label.text = text
	label.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
	label.add_theme_stylebox_override("normal", preload("res://resources/panel_style.tres"))

	panel.add_child(label)
	vbox.add_child(panel)

func generate_panel_image(row: int, vbox: VBoxContainer, texture: CompressedTexture2D):
	var panel = Panel.new()

	var node_val: Node = button_image_panel.instantiate()
	node_val.get_node("TextureRect").texture = texture

	panel.size_flags_vertical = Control.SIZE_EXPAND
	panel.custom_minimum_size = Vector2(100, box_height)
	panel.add_child(node_val)

	# Use styleboxes instead of ColorRect
	var style = StyleBoxFlat.new()
	if (row == 0):
		style.bg_color = title_color
	elif (row % 2 == 0):
		style.bg_color = even_color
	else:
		style.bg_color = odd_color

	panel.add_theme_stylebox_override("panel", style)

	vbox.add_child(panel)

func get_button_value(remap_row: button_remap_row, button: Resource) -> CompressedTexture2D:
	var panel_value: CompressedTexture2D

	if remap_row.button is keyboard_enums_holder:
		panel_value = load(ButtonImageBinds.ps4_button_image_bind_dict[remap_row.button]["image_path"])
	elif remap_row.button is mouse_enums_holder:
		panel_value = load(ButtonImageBinds.mouse_button_image_bind_dict[remap_row.button]["image_path"])
	elif remap_row.button is ps4_enums_holder:
		var index: int = ((remap_row.button as ps4_enums_holder).ps4_buttons as button_enums.PS4Controller)
		var x: String = ButtonImageBinds.ps4_button_image_bind_dict[index]["image_path"]
		panel_value = load(x)
		print(panel_value)
	elif remap_row.button is xbox_enums_holder:
		panel_value = load(ButtonImageBinds.xbox_button_image_bind_dict[remap_row.button]["image_path"])
	elif remap_row.button is switch_enums_holder:
		panel_value = load(ButtonImageBinds.switch_button_image_bind_dict[remap_row.button]["image_path"])

	# print(panel_value)

	return panel_value
