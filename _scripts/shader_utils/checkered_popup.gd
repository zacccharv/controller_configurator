extends PopupMenu

@export var shader: Shader
@export var children: Node
@export var count: int = 0

func _ready():
	var material = ShaderMaterial.new()
	count = self.item_count
	
	material.set_shader(shader)
	material.set_shader_parameter("Item_Count", count)

	children = get_child(0, true)
	(children as CanvasItem).material = material
