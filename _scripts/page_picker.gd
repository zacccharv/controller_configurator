extends Node

@export var pages: Dictionary[String, PackedScene]
@export var default_page: String
@onready var page_root = get_node("./page_root")

func _ready():
	# for page in pages:
	# 	(pages[page] as Resource).set_path_cache(page)
	if pages.has(default_page):
		pick_page(default_page)

func pick_page(page_name: String):
	if get_child_count() > 0:
		var children = get_children()
		for child in children:
			remove_child(child)

	var page_res: PackedScene = pages[page_name].duplicate() as PackedScene

	var page = Node.new()
	page = page_res.instantiate()

	add_child(page)
