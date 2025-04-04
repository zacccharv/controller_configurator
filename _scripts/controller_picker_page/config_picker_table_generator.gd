class_name config_picker_table_generator extends VBoxContainer

@export var button_template: PackedScene
@export var config_folder_path: String = "res://resources/controller_data/configs/"
var configuration_files: Array[controller_config]

func _ready():
	for paths in get_all_file_paths(config_folder_path):

		var config_resource = load(paths)
		var button: config_picker_button = button_template.instantiate()

		button.config = config_resource
		button.text = button.config.config_name
		
		add_child(button)
		configuration_files.append(config_resource)

func get_all_file_paths(path: String) -> Array[String]:  
	var file_paths: Array[String]
	var dir: DirAccess = DirAccess.open(path)  

	dir.list_dir_begin()  

	var file_name = dir.get_next()  

	while file_name != "":  

		var file_path = path + file_name  

		if file_name.ends_with(".tres"):
			file_paths.append(file_path)  

		file_name = dir.get_next()  

	return file_paths