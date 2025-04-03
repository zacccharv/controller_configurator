extends Button

func _ready():
	self.pressed.connect(_on_pressed)

func _on_pressed():
	# Swap the page from the controller picker to the controller data page
	get_node("/root/Main/page_picker").pick_page("controller_picker_page")
