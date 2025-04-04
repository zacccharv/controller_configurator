class_name page_picker extends Node

signal page_picked(data: Variant)

@export var pages: Dictionary[String, PackedScene]
@export var default_page: String
@onready var page_root = get_node("./page_root")

func _ready():
	if pages.has(default_page):
		pick_page(default_page, "")

func pick_page(page_name: String, data: Variant):
	if get_child_count() > 0:
		var children = get_children()
		for child in children:
			remove_child(child)

	var page_res: PackedScene = pages[page_name].duplicate() as PackedScene

	var page = Node.new()
	page = page_res.instantiate()

	add_child(page)
	page_picked.emit(data)
