extends Button

@export var r_table_generator: table_generator
@export var r_controller_cfg: Array[controller_config]
@export var r_index: int

func _ready():
	self.pressed.connect(_on_pressed)

func _on_pressed():
	r_table_generator.r_controller_cfg = r_controller_cfg[r_index]

	r_index += 1
	if r_index >= r_controller_cfg.size():
		r_index = 0

	r_table_generator.generate_grid()
