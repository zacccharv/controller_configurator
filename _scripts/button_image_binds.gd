@tool

extends Node

@export var ps4_button_image_bind_dict: Dictionary = {
	#region Face buttons
	ButtonEnums.PS4Controller.SQUARE: {
		"image_path": "res://images/controller_icons/playstation_button_color_square.png",
		"image": CompressedTexture2D.new()
	},
	ButtonEnums.PS4Controller.CROSS: {
		"image_path": "res://images/controller_icons/playstation_button_color_cross.png",
		"image": CompressedTexture2D.new()
	},
	ButtonEnums.PS4Controller.CIRCLE: {
		"image_path": "res://images/controller_icons/playstation_button_color_circle.png",
		"image": CompressedTexture2D.new()
	},
	ButtonEnums.PS4Controller.TRIANGLE: {
		"image_path": "res://images/controller_icons/playstation_button_color_triangle.png",
		"image": CompressedTexture2D.new()
	},
	#endregion Face buttons
	#region Trigger buttons
	ButtonEnums.PS4Controller.R1: {
		"image_path": "res://images/controller_icons/playstation_trigger_r1_alternative.png",
		"image": CompressedTexture2D.new()
	},
	ButtonEnums.PS4Controller.R2: {
		"image_path": "res://images/controller_icons/playstation_trigger_r2.png",
		"image": CompressedTexture2D.new()
	},
	ButtonEnums.PS4Controller.R3: {
		"image_path": "res://images/controller_icons/r3.png",
		"image": CompressedTexture2D.new()
	},
	ButtonEnums.PS4Controller.L1: {
		"image_path": "res://images/controller_icons/playstation_trigger_l1_alternative.png",
		"image": CompressedTexture2D.new()
	},
	ButtonEnums.PS4Controller.L2: {
		"image_path": "res://images/controller_icons/playstation_trigger_l2.png",
		"image": CompressedTexture2D.new()
	},
	ButtonEnums.PS4Controller.L3: {
		"image_path": "res://images/controller_icons/l3.png",
		"image": CompressedTexture2D.new()
	},
	#endregion Trigger buttons
	#region Dpad
	ButtonEnums.PS4Controller.DPAD_UP: {
		"image_path": "res://images/controller_icons/playstation_dpad_up_outline.png",
		"image": CompressedTexture2D.new()
	},
	ButtonEnums.PS4Controller.DPAD_RIGHT: {
		"image_path": "res://images/controller_icons/playstation_dpad_right_outline.png",
		"image": CompressedTexture2D.new()
	},
	ButtonEnums.PS4Controller.DPAD_DOWN: {
		"image_path": "res://images/controller_icons/playstation_dpad_down_outline.png",
		"image": CompressedTexture2D.new()
	},
	ButtonEnums.PS4Controller.DPAD_LEFT: {
		"image_path": "res://images/controller_icons/playstation_dpad_left_outline.png",
		"image": CompressedTexture2D.new()
	},
	#endregion Dpad
	#region Lstick
	ButtonEnums.PS4Controller.LSTICK_UP: {
		"image_path": "res://images/controller_icons/lstick_up.png",
		"image": CompressedTexture2D.new()
	},
	ButtonEnums.PS4Controller.LSTICK_RIGHT: {
		"image_path": "res://images/controller_icons/lstick_right.png",
		"image": CompressedTexture2D.new()
	},
	ButtonEnums.PS4Controller.LSTICK_DOWN: {
		"image_path": "res://images/controller_icons/lstick_down.png",
		"image": CompressedTexture2D.new()
	},
	ButtonEnums.PS4Controller.LSTICK_LEFT: {
		"image_path": "res://images/controller_icons/lstick_left.png",
		"image": CompressedTexture2D.new()
	},
	#endregion Lstick
	#region Rstick
	ButtonEnums.PS4Controller.RSTICK_UP: {
		"image_path": "res://images/controller_icons/rstick_up.png",
		"image": CompressedTexture2D.new()
	},
	ButtonEnums.PS4Controller.RSTICK_RIGHT: {
		"image_path": "res://images/controller_icons/rstick_right.png",
		"image": CompressedTexture2D.new()
	},
	ButtonEnums.PS4Controller.RSTICK_DOWN: {
		"image_path": "res://images/controller_icons/rstick_down.png",
		"image": CompressedTexture2D.new()
	},
	ButtonEnums.PS4Controller.RSTICK_LEFT: {
		"image_path": "res://images/controller_icons/rstick_left.png",
		"image": CompressedTexture2D.new()
	},
	#endregion Rstick
	#region Touchpad
	ButtonEnums.PS4Controller.TOUCHPAD: {
		"image_path": "res://images/controller_icons/playstation_touchpad.png",
		"image": CompressedTexture2D.new()
	},
	ButtonEnums.PS4Controller.TOUCHPAD_LEFT: {
		"image_path": "res://images/controller_icons/playstation_touchpad_left_click.png",
		"image": CompressedTexture2D.new()
	},
	ButtonEnums.PS4Controller.TOUCHPAD_RIGHT: {
		"image_path": "res://images/controller_icons/playstation_touchpad_right_click.png",
		"image": CompressedTexture2D.new()
	},
	#region Special buttons
	ButtonEnums.PS4Controller.SHARE: {
		"image_path": "res://images/controller_icons/playstation_button_share.png",
		"image": CompressedTexture2D.new()
	},
	ButtonEnums.PS4Controller.OPTIONS: {
		"image_path": "res://images/controller_icons/playstation_button_options.png",
		"image": CompressedTexture2D.new()
	}
	#endregion Special buttons
}

@export var xbox_button_image_bind_dict: Dictionary = {
	#region Face buttons
	ButtonEnums.XboxController.Y: {
		"image_path": "res://images/controller_icons/xbox_button_color_y.png",
		"image": CompressedTexture2D.new()
	},
	ButtonEnums.XboxController.X: {
		"image_path": "res://images/controller_icons/xbox_button_color_x.png",
		"image": CompressedTexture2D.new()
	},
	ButtonEnums.XboxController.A: {
		"image_path": "res://images/controller_icons/xbox_button_color_a.png",
		"image": CompressedTexture2D.new()
	},
	ButtonEnums.XboxController.B: {
		"image_path": "res://images/controller_icons/xbox_button_color_b.png",
		"image": CompressedTexture2D.new()
	},
	#endregion Face buttons
	#region Trigger buttons
	ButtonEnums.XboxController.RB: {
		"image_path": "res://images/controller_icons/xbox_rb.png",
		"image": CompressedTexture2D.new()
	},
	ButtonEnums.XboxController.RT: {
		"image_path": "res://images/controller_icons/xbox_rt.png",
		"image": CompressedTexture2D.new()
	},
	ButtonEnums.XboxController.LB: {
		"image_path": "res://images/controller_icons/xbox_lb.png",
		"image": CompressedTexture2D.new()
	},
	ButtonEnums.XboxController.LT: {
		"image_path": "res://images/controller_icons/xbox_lt.png",
		"image": CompressedTexture2D.new()
	},
	#endregion Trigger buttons
	#region Dpad
	ButtonEnums.XboxController.DPAD_UP: {
		"image_path": "res://images/controller_icons/xbox_dpad_up_outline.png",
		"image": CompressedTexture2D.new()
	},
	ButtonEnums.XboxController.DPAD_RIGHT: {
		"image_path": "res://images/controller_icons/xbox_dpad_right_outline.png",
		"image": CompressedTexture2D.new()
	},
	ButtonEnums.XboxController.DPAD_DOWN: {
		"image_path": "res://images/controller_icons/xbox_dpad_down_outline.png",
		"image": CompressedTexture2D.new()
	},
	ButtonEnums.XboxController.DPAD_LEFT: {
		"image_path": "res://images/controller_icons/xbox_dpad_left_outline.png",
		"image": CompressedTexture2D.new()
	},
	#endregion Dpad
	#region Lstick
	ButtonEnums.XboxController.LSTICK_UP: {
		"image_path": "res://images/controller_icons/lstick_up.png",
		"image": CompressedTexture2D.new()
	},
	ButtonEnums.XboxController.LSTICK_RIGHT: {
		"image_path": "res://images/controller_icons/lstick_right.png",
		"image": CompressedTexture2D.new()
	},
	ButtonEnums.XboxController.LSTICK_DOWN: {
		"image_path": "res://images/controller_icons/lstick_down.png",
		"image": CompressedTexture2D.new()
	},
	ButtonEnums.XboxController.LSTICK_LEFT: {
		"image_path": "res://images/controller_icons/lstick_left.png",
		"image": CompressedTexture2D.new()
	},
	#endregion Lstick
	#region Rstick
	ButtonEnums.XboxController.RSTICK_UP: {
		"image_path": "res://images/controller_icons/rstick_up.png",
		"image": CompressedTexture2D.new()
	},
	ButtonEnums.XboxController.RSTICK_RIGHT: {
		"image_path": "res://images/controller_icons/rstick_right.png",
		"image": CompressedTexture2D.new()
	},
	ButtonEnums.XboxController.RSTICK_DOWN: {
		"image_path": "res://images/controller_icons/rstick_down.png",
		"image": CompressedTexture2D.new()
	},
	ButtonEnums.XboxController.RSTICK_LEFT: {
		"image_path": "res://images/controller_icons/rstick_left.png",
		"image": CompressedTexture2D.new()
	},
	#endregion Rstick
	#region Special buttons
	ButtonEnums.XboxController.MENU: {
		"image_path": "res://images/controller_icons/xbox_button_menu.png",
		"image": CompressedTexture2D.new()
	},
	ButtonEnums.XboxController.VIEW: {
		"image_path": "res://images/controller_icons/xbox_button_view.png",
		"image": CompressedTexture2D.new()
	},
	ButtonEnums.XboxController.SHARE: {
		"image_path": "res://images/controller_icons/xbox_button_share.png",
		"image": CompressedTexture2D.new()
	}
	#endregion Special buttons
}

@export var switch_button_image_bind_dict: Dictionary = {
	#region Face buttons
	ButtonEnums.SwitchController.X: {
		"image_path": "res://images/controller_icons/switch_button_x.png",
		"image": CompressedTexture2D.new()
	},
	ButtonEnums.SwitchController.Y: {
		"image_path": "res://images/controller_icons/switch_button_y.png",
		"image": CompressedTexture2D.new()
	},
	ButtonEnums.SwitchController.A: {
		"image_path": "res://images/controller_icons/switch_button_a.png",
		"image": CompressedTexture2D.new()
	},
	ButtonEnums.SwitchController.B: {
		"image_path": "res://images/controller_icons/switch_button_b.png",
		"image": CompressedTexture2D.new()
	},
	#endregion Face buttons
	#region Trigger buttons
	ButtonEnums.SwitchController.SL: {
		"image_path": "res://images/controller_icons/switch_button_sl.png",
		"image": CompressedTexture2D.new()
	},
	ButtonEnums.SwitchController.SR: {
		"image_path": "res://images/controller_icons/switch_button_sr.png",
		"image": CompressedTexture2D.new()
	},
	ButtonEnums.SwitchController.ZL: {
		"image_path": "res://images/controller_icons/switch_button_zl.png",
		"image": CompressedTexture2D.new()
	},
	ButtonEnums.SwitchController.ZR: {
		"image_path": "res://images/controller_icons/switch_button_zr.png",
		"image": CompressedTexture2D.new()
	},
	#endregion Trigger buttons
	#region Dpad
	ButtonEnums.SwitchController.DPAD_UP: {
		"image_path": "res://images/controller_icons/switch_dpad_up_outline.png",
		"image": CompressedTexture2D.new()
	},
	ButtonEnums.SwitchController.DPAD_RIGHT: {
		"image_path": "res://images/controller_icons/switch_dpad_right_outline.png",
		"image": CompressedTexture2D.new()
	},
	ButtonEnums.SwitchController.DPAD_DOWN: {
		"image_path": "res://images/controller_icons/switch_dpad_down_outline.png",
		"image": CompressedTexture2D.new()
	},
	ButtonEnums.SwitchController.DPAD_LEFT: {
		"image_path": "res://images/controller_icons/switch_dpad_left_outline.png",
		"image": CompressedTexture2D.new()
	},
	#endregion Dpad
	#region Lstick
	ButtonEnums.SwitchController.LSTICK_UP: {
		"image_path": "res://images/controller_icons/lstick_up.png",
		"image": CompressedTexture2D.new()
	},
	ButtonEnums.SwitchController.LSTICK_RIGHT: {
		"image_path": "res://images/controller_icons/lstick_right.png",
		"image": CompressedTexture2D.new()
	},
	ButtonEnums.SwitchController.LSTICK_DOWN: {
		"image_path": "res://images/controller_icons/lstick_down.png",
		"image": CompressedTexture2D.new()
	},
	ButtonEnums.SwitchController.LSTICK_LEFT: {
		"image_path": "res://images/controller_icons/lstick_left.png",
		"image": CompressedTexture2D.new()
	},
	#endregion Lstick
	#region Rstick
	ButtonEnums.SwitchController.RSTICK_UP: {
		"image_path": "res://images/controller_icons/rstick_up.png",
		"image": CompressedTexture2D.new()
	},
	ButtonEnums.SwitchController.RSTICK_RIGHT: {
		"image_path": "res://images/controller_icons/rstick_right.png",
		"image": CompressedTexture2D.new()
	},
	ButtonEnums.SwitchController.RSTICK_DOWN: {
		"image_path": "res://images/controller_icons/rstick_down.png",
		"image": CompressedTexture2D.new()
	},
	ButtonEnums.SwitchController.RSTICK_LEFT: {
		"image_path": "res://images/controller_icons/rstick_left.png",
		"image": CompressedTexture2D.new()
	},
	#endregion Rstick
	#region Special buttons
	ButtonEnums.SwitchController.SYNC: {
		"image_path": "res://images/controller_icons/switch_button_sync.png",
		"image": CompressedTexture2D.new()
	},
	ButtonEnums.SwitchController.HOME: {
		"image_path": "res://images/controller_icons/switch_button_home.png",
		"image": CompressedTexture2D.new()
	},
	ButtonEnums.SwitchController.PLUS: {
		"image_path": "res://images/controller_icons/switch_button_plus.png",
		"image": CompressedTexture2D.new()
	},
	ButtonEnums.SwitchController.MINUS: {
		"image_path": "res://images/controller_icons/switch_button_minus.png",
		"image": CompressedTexture2D.new()
	},
	#endregion Special buttons
}

@export var mouse_button_image_bind_dict: Dictionary = {
	ButtonEnums.Mouse.LEFT_CLICK: {
		"image_path": "res://images/controller_icons/mouse_left_outline.png",
		"image": CompressedTexture2D.new()
	},
	ButtonEnums.Mouse.RIGHT_CLICK: {
		"image_path": "res://images/controller_icons/mouse_right_outline.png",
		"image": CompressedTexture2D.new()
	},
	ButtonEnums.Mouse.MIDDLE_CLICK: {
		"image_path": "res://images/controller_icons/mouse_scroll_outline.png",
		"image": CompressedTexture2D.new()
	},
	ButtonEnums.Mouse.WHEEL_UP: {
		"image_path": "res://images/controller_icons/mouse_scroll_up_outline.png",
		"image": CompressedTexture2D.new()
	},
	ButtonEnums.Mouse.WHEEL_DOWN: {
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
