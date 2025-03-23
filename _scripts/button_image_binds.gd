@tool

class_name button_image_binds

extends Node

@export var ps4_button_image_bind_dict: Dictionary = {
	#region Face buttons
	button_enums.PS4Controller.SQUARE: {
		"image_path": "res://images/controller_icons/playstation_button_color_square.png",
		"image": CompressedTexture2D.new()
	},
	button_enums.PS4Controller.CROSS: {
		"image_path": "res://images/controller_icons/playstation_button_color_cross.png",
		"image": CompressedTexture2D.new()
	},
	button_enums.PS4Controller.CIRCLE: {
		"image_path": "res://images/controller_icons/playstation_button_color_circle.png",
		"image": CompressedTexture2D.new()
	},
	button_enums.PS4Controller.TRIANGLE: {
		"image_path": "res://images/controller_icons/playstation_button_color_triangle.png",
		"image": CompressedTexture2D.new()
	},
	#endregion Face buttons
	#region Trigger buttons
	button_enums.PS4Controller.R1: {
		"image_path": "res://images/controller_icons/playstation_trigger_r1_alternative.png",
		"image": CompressedTexture2D.new()
	},
	button_enums.PS4Controller.R2: {
		"image_path": "res://images/controller_icons/playstation_trigger_r2.png",
		"image": CompressedTexture2D.new()
	},
	button_enums.PS4Controller.R3: {
		"image_path": "res://images/controller_icons/r3.png",
		"image": CompressedTexture2D.new()
	},
	button_enums.PS4Controller.L1: {
		"image_path": "res://images/controller_icons/playstation_trigger_l1_alternative.png",
		"image": CompressedTexture2D.new()
	},
	button_enums.PS4Controller.L2: {
		"image_path": "res://images/controller_icons/playstation_trigger_l2.png",
		"image": CompressedTexture2D.new()
	},
	button_enums.PS4Controller.L3: {
		"image_path": "res://images/controller_icons/l3.png",
		"image": CompressedTexture2D.new()
	},
	#endregion Trigger buttons
	#region Dpad
	button_enums.PS4Controller.DPAD_UP: {
		"image_path": "res://images/controller_icons/playstation_dpad_up_outline.png",
		"image": CompressedTexture2D.new()
	},
	button_enums.PS4Controller.DPAD_RIGHT: {
		"image_path": "res://images/controller_icons/playstation_dpad_right_outline.png",
		"image": CompressedTexture2D.new()
	},
	button_enums.PS4Controller.DPAD_DOWN: {
		"image_path": "res://images/controller_icons/playstation_dpad_down_outline.png",
		"image": CompressedTexture2D.new()
	},
	button_enums.PS4Controller.DPAD_LEFT: {
		"image_path": "res://images/controller_icons/playstation_dpad_left_outline.png",
		"image": CompressedTexture2D.new()
	},
	#endregion Dpad
	#region Lstick
	button_enums.PS4Controller.LSTICK_UP: {
		"image_path": "res://images/controller_icons/lstick_up.png",
		"image": CompressedTexture2D.new()
	},
	button_enums.PS4Controller.LSTICK_RIGHT: {
		"image_path": "res://images/controller_icons/lstick_right.png",
		"image": CompressedTexture2D.new()
	},
	button_enums.PS4Controller.LSTICK_DOWN: {
		"image_path": "res://images/controller_icons/lstick_down.png",
		"image": CompressedTexture2D.new()
	},
	button_enums.PS4Controller.LSTICK_LEFT: {
		"image_path": "res://images/controller_icons/lstick_left.png",
		"image": CompressedTexture2D.new()
	},
	#endregion Lstick
	#region Rstick
	button_enums.PS4Controller.RSTICK_UP: {
		"image_path": "res://images/controller_icons/rstick_up.png",
		"image": CompressedTexture2D.new()
	},
	button_enums.PS4Controller.RSTICK_RIGHT: {
		"image_path": "res://images/controller_icons/rstick_right.png",
		"image": CompressedTexture2D.new()
	},
	button_enums.PS4Controller.RSTICK_DOWN: {
		"image_path": "res://images/controller_icons/rstick_down.png",
		"image": CompressedTexture2D.new()
	},
	button_enums.PS4Controller.RSTICK_LEFT: {
		"image_path": "res://images/controller_icons/rstick_left.png",
		"image": CompressedTexture2D.new()
	},
	#endregion Rstick
	#region Touchpad
	button_enums.PS4Controller.TOUCHPAD: {
		"image_path": "res://images/controller_icons/playstation_touchpad.png",
		"image": CompressedTexture2D.new()
	},
	button_enums.PS4Controller.TOUCHPAD_LEFT: {
		"image_path": "res://images/controller_icons/playstation_touchpad_left_click.png",
		"image": CompressedTexture2D.new()
	},
	button_enums.PS4Controller.TOUCHPAD_RIGHT: {
		"image_path": "res://images/controller_icons/playstation_touchpad_right_click.png",
		"image": CompressedTexture2D.new()
	},
	#region Special buttons
	button_enums.PS4Controller.SHARE: {
		"image_path": "res://images/controller_icons/playstation_button_share.png",
		"image": CompressedTexture2D.new()
	},
	button_enums.PS4Controller.OPTIONS: {
		"image_path": "res://images/controller_icons/playstation_button_options.png",
		"image": CompressedTexture2D.new()
	}
	#endregion Special buttons
}

@export var xbox_button_image_bind_dict: Dictionary = {
	#region Face buttons
	button_enums.XboxController.Y: {
		"image_path": "res://images/controller_icons/xbox_button_color_y.png",
		"image": CompressedTexture2D.new()
	},
	button_enums.XboxController.X: {
		"image_path": "res://images/controller_icons/xbox_button_color_x.png",
		"image": CompressedTexture2D.new()
	},
	button_enums.XboxController.A: {
		"image_path": "res://images/controller_icons/xbox_button_color_a.png",
		"image": CompressedTexture2D.new()
	},
	button_enums.XboxController.B: {
		"image_path": "res://images/controller_icons/xbox_button_color_b.png",
		"image": CompressedTexture2D.new()
	},
	#endregion Face buttons
	#region Trigger buttons
	button_enums.XboxController.RB: {
		"image_path": "res://images/controller_icons/xbox_rb.png",
		"image": CompressedTexture2D.new()
	},
	button_enums.XboxController.RT: {
		"image_path": "res://images/controller_icons/xbox_rt.png",
		"image": CompressedTexture2D.new()
	},
	button_enums.XboxController.LB: {
		"image_path": "res://images/controller_icons/xbox_lb.png",
		"image": CompressedTexture2D.new()
	},
	button_enums.XboxController.LT: {
		"image_path": "res://images/controller_icons/xbox_lt.png",
		"image": CompressedTexture2D.new()
	},
	#endregion Trigger buttons
	#region Dpad
	button_enums.XboxController.DPAD_UP: {
		"image_path": "res://images/controller_icons/xbox_dpad_up_outline.png",
		"image": CompressedTexture2D.new()
	},
	button_enums.XboxController.DPAD_RIGHT: {
		"image_path": "res://images/controller_icons/xbox_dpad_right_outline.png",
		"image": CompressedTexture2D.new()
	},
	button_enums.XboxController.DPAD_DOWN: {
		"image_path": "res://images/controller_icons/xbox_dpad_down_outline.png",
		"image": CompressedTexture2D.new()
	},
	button_enums.XboxController.DPAD_LEFT: {
		"image_path": "res://images/controller_icons/xbox_dpad_left_outline.png",
		"image": CompressedTexture2D.new()
	},
	#endregion Dpad
	#region Lstick
	button_enums.XboxController.LSTICK_UP: {
		"image_path": "res://images/controller_icons/lstick_up.png",
		"image": CompressedTexture2D.new()
	},
	button_enums.XboxController.LSTICK_RIGHT: {
		"image_path": "res://images/controller_icons/lstick_right.png",
		"image": CompressedTexture2D.new()
	},
	button_enums.XboxController.LSTICK_DOWN: {
		"image_path": "res://images/controller_icons/lstick_down.png",
		"image": CompressedTexture2D.new()
	},
	button_enums.XboxController.LSTICK_LEFT: {
		"image_path": "res://images/controller_icons/lstick_left.png",
		"image": CompressedTexture2D.new()
	},
	#endregion Lstick
	#region Rstick
	button_enums.XboxController.RSTICK_UP: {
		"image_path": "res://images/controller_icons/rstick_up.png",
		"image": CompressedTexture2D.new()
	},
	button_enums.XboxController.RSTICK_RIGHT: {
		"image_path": "res://images/controller_icons/rstick_right.png",
		"image": CompressedTexture2D.new()
	},
	button_enums.XboxController.RSTICK_DOWN: {
		"image_path": "res://images/controller_icons/rstick_down.png",
		"image": CompressedTexture2D.new()
	},
	button_enums.XboxController.RSTICK_LEFT: {
		"image_path": "res://images/controller_icons/rstick_left.png",
		"image": CompressedTexture2D.new()
	},
	#endregion Rstick
	#region Special buttons
	button_enums.XboxController.MENU: {
		"image_path": "res://images/controller_icons/xbox_button_menu.png",
		"image": CompressedTexture2D.new()
	},
	button_enums.XboxController.VIEW: {
		"image_path": "res://images/controller_icons/xbox_button_view.png",
		"image": CompressedTexture2D.new()
	},
	button_enums.XboxController.SHARE: {
		"image_path": "res://images/controller_icons/xbox_button_share.png",
		"image": CompressedTexture2D.new()
	}
	#endregion Special buttons
}

@export var switch_button_image_bind_dict: Dictionary = {
	#region Face buttons
	button_enums.SwitchController.X: {
		"image_path": "res://images/controller_icons/switch_button_x.png",
		"image": CompressedTexture2D.new()
	},
	button_enums.SwitchController.Y: {
		"image_path": "res://images/controller_icons/switch_button_y.png",
		"image": CompressedTexture2D.new()
	},
	button_enums.SwitchController.A: {
		"image_path": "res://images/controller_icons/switch_button_a.png",
		"image": CompressedTexture2D.new()
	},
	button_enums.SwitchController.B: {
		"image_path": "res://images/controller_icons/switch_button_b.png",
		"image": CompressedTexture2D.new()
	},
	#endregion Face buttons
	#region Trigger buttons
	button_enums.SwitchController.SL: {
		"image_path": "res://images/controller_icons/switch_button_sl.png",
		"image": CompressedTexture2D.new()
	},
	button_enums.SwitchController.SR: {
		"image_path": "res://images/controller_icons/switch_button_sr.png",
		"image": CompressedTexture2D.new()
	},
	button_enums.SwitchController.ZL: {
		"image_path": "res://images/controller_icons/switch_button_zl.png",
		"image": CompressedTexture2D.new()
	},
	button_enums.SwitchController.ZR: {
		"image_path": "res://images/controller_icons/switch_button_zr.png",
		"image": CompressedTexture2D.new()
	},
	#endregion Trigger buttons
	#region Dpad
	button_enums.SwitchController.DPAD_UP: {
		"image_path": "res://images/controller_icons/switch_dpad_up_outline.png",
		"image": CompressedTexture2D.new()
	},
	button_enums.SwitchController.DPAD_RIGHT: {
		"image_path": "res://images/controller_icons/switch_dpad_right_outline.png",
		"image": CompressedTexture2D.new()
	},
	button_enums.SwitchController.DPAD_DOWN: {
		"image_path": "res://images/controller_icons/switch_dpad_down_outline.png",
		"image": CompressedTexture2D.new()
	},
	button_enums.SwitchController.DPAD_LEFT: {
		"image_path": "res://images/controller_icons/switch_dpad_left_outline.png",
		"image": CompressedTexture2D.new()
	},
	#endregion Dpad
	#region Lstick
	button_enums.SwitchController.LSTICK_UP: {
		"image_path": "res://images/controller_icons/lstick_up.png",
		"image": CompressedTexture2D.new()
	},
	button_enums.SwitchController.LSTICK_RIGHT: {
		"image_path": "res://images/controller_icons/lstick_right.png",
		"image": CompressedTexture2D.new()
	},
	button_enums.SwitchController.LSTICK_DOWN: {
		"image_path": "res://images/controller_icons/lstick_down.png",
		"image": CompressedTexture2D.new()
	},
	button_enums.SwitchController.LSTICK_LEFT: {
		"image_path": "res://images/controller_icons/lstick_left.png",
		"image": CompressedTexture2D.new()
	},
	#endregion Lstick
	#region Rstick
	button_enums.SwitchController.RSTICK_UP: {
		"image_path": "res://images/controller_icons/rstick_up.png",
		"image": CompressedTexture2D.new()
	},
	button_enums.SwitchController.RSTICK_RIGHT: {
		"image_path": "res://images/controller_icons/rstick_right.png",
		"image": CompressedTexture2D.new()
	},
	button_enums.SwitchController.RSTICK_DOWN: {
		"image_path": "res://images/controller_icons/rstick_down.png",
		"image": CompressedTexture2D.new()
	},
	button_enums.SwitchController.RSTICK_LEFT: {
		"image_path": "res://images/controller_icons/rstick_left.png",
		"image": CompressedTexture2D.new()
	},
	#endregion Rstick
	#region Special buttons
	button_enums.SwitchController.SYNC: {
		"image_path": "res://images/controller_icons/switch_button_sync.png",
		"image": CompressedTexture2D.new()
	},
	button_enums.SwitchController.HOME: {
		"image_path": "res://images/controller_icons/switch_button_home.png",
		"image": CompressedTexture2D.new()
	},
	button_enums.SwitchController.PLUS: {
		"image_path": "res://images/controller_icons/switch_button_plus.png",
		"image": CompressedTexture2D.new()
	},
	button_enums.SwitchController.MINUS: {
		"image_path": "res://images/controller_icons/switch_button_minus.png",
		"image": CompressedTexture2D.new()
	},
	#endregion Special buttons
}

@export var mouse_button_image_bind_dict: Dictionary = {
	button_enums.Mouse.LEFT_CLICK: {
		"image_path": "res://images/controller_icons/mouse_left_outline.png",
		"image": CompressedTexture2D.new()
	},
	button_enums.Mouse.RIGHT_CLICK: {
		"image_path": "res://images/controller_icons/mouse_right_outline.png",
		"image": CompressedTexture2D.new()
	},
	button_enums.Mouse.MIDDLE_CLICK: {
		"image_path": "res://images/controller_icons/mouse_scroll_outline.png",
		"image": CompressedTexture2D.new()
	},
	button_enums.Mouse.WHEEL_UP: {
		"image_path": "res://images/controller_icons/mouse_scroll_up_outline.png",
		"image": CompressedTexture2D.new()
	},
	button_enums.Mouse.WHEEL_DOWN: {
		"image_path": "res://images/controller_icons/mouse_scroll_down_outline.png",
		"image": CompressedTexture2D.new()
	},
}

# @export_tool_button("Generate", "Callable") var generate_action = _generate

func _ready():
	for item in ps4_button_image_bind_dict:
		ps4_button_image_bind_dict[item]["image"] = load(ps4_button_image_bind_dict[item]["image_path"])
	for item in xbox_button_image_bind_dict:
		xbox_button_image_bind_dict[item]["image"] = load(xbox_button_image_bind_dict[item]["image_path"])
	for item in switch_button_image_bind_dict:
		switch_button_image_bind_dict[item]["image"] = load(switch_button_image_bind_dict[item]["image_path"])
	for item in mouse_button_image_bind_dict:
		mouse_button_image_bind_dict[item]["image"] = load(mouse_button_image_bind_dict[item]["image_path"])
