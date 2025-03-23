extends Node

signal done
signal progress

var images_cache := []

var thread: Thread = Thread.new()
var preloaded_textures = {}

func load_static_images():
	for dict in [ButtonImageBinds.mouse_button_image_bind_dict,
				ButtonImageBinds.ps4_button_image_bind_dict,
				ButtonImageBinds.xbox_button_image_bind_dict,
				ButtonImageBinds.switch_button_image_bind_dict]:
		for key in dict:
			if dict[key].has("image_path"):
				images_cache.append(dict[key]["image_path"])

	if images_cache.size() > 0:
		for image_path in images_cache:
			images_cache.push_back(load(image_path))
			call_deferred("emit_signal", "progress", images_cache.size(), image_path + 1)

		call_deferred("emit_signal", "done")

func _exit_tree():
	thread.wait_to_finish()
