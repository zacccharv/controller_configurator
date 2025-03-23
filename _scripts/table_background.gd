class_name table_background

extends ColorRect

@export var box_container_transform: BoxContainer
@export var border_size: int = 2
var box_container_position: Vector2
var box_container_size: Vector2

# Called when the node enters the scene tree for the first time.
func _ready():
	box_container_position = box_container_transform.position - Vector2(border_size,border_size)
	box_container_size = box_container_transform.size
	size = box_container_size + Vector2(border_size * 2,border_size * 2)
	global_position = box_container_position

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	box_container_position = box_container_transform.position - Vector2(border_size,border_size)
	box_container_size = box_container_transform.size
	size = box_container_size + Vector2(border_size * 2,border_size * 2)
	global_position = box_container_position
