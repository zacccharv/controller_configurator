class_name table_generator

extends HBoxContainer

@export var title_color: Color
@export var even_color: Color
@export var odd_color: Color

@export var controller_cfg: controller_config

@export var table_grid = [["Title00", "Title01", "Title02"], ["a", "b", "c"], ["d", "e", "f"], ["g", "h", "i"]]

# Called when the node enters the scene tree for the first time.
func _ready():
	generate_grid()

func generate_grid():
	# create the columns
	for column_index in range(table_grid[0].size()):
		var col = VBoxContainer.new()
		var row_count = (table_grid as Array).size()

		col.add_theme_constant_override("separation", 2)

		generate_row(row_count, column_index, col)
		self.add_child(col)

func generate_row(count: int, column: int, vbox: VBoxContainer):
	for row in range(count):
		generate_panel(row, vbox, table_grid[row][column] as String)

func generate_panel(row: int, vbox: VBoxContainer, text: String):
	var panel = PanelContainer.new()
	var color_rect = ColorRect.new()
	var label = Label.new()

	panel.size_flags_horizontal = Control.SIZE_FILL

	if (row == 0):
		color_rect.color = title_color
	else: if (row % 2 == 0):
		color_rect.color = even_color
	else: if (row % 2 == 1):
		color_rect.color = odd_color

	label.text = text
	label.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
	label.add_theme_stylebox_override("normal", preload("res://resources/panel_style.tres"))

	panel.add_child(color_rect)
	panel.add_child(label)
	vbox.add_child(panel)
