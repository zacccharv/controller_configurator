@tool
class_name generate_test_data extends Control

@export var table_generator: config_table_generator

@export_tool_button("Generate", "Callable") var generate_action = _generate_thing

func _generate_thing():
	table_generator._theme_me()
	table_generator.generate_grid()
	# %table_generator.owner = self
	# %table_generator.title_style = StyleBoxFlat.new()
	# %table_generator.title_style.bg_color = %table_generator.title_color

	# %table_generator.even_style = StyleBoxFlat.new()
	# %table_generator.even_style.bg_color = %table_generator.even_color

	# %table_generator.odd_style = StyleBoxFlat.new()
	# %table_generator.odd_style.bg_color = %table_generator.odd_color
