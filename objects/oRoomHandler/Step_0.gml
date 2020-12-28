/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 04831E8D
/// @DnDArgument : "var" "cam"
/// @DnDArgument : "value" "view_camera[0]"
var cam = view_camera[0];

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 5C5A4E3B
/// @DnDArgument : "var" "new_x"
/// @DnDArgument : "value" "camera_get_view_x(cam)"
var new_x = camera_get_view_x(cam);

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 22B7301B
/// @DnDArgument : "var" "new_y"
/// @DnDArgument : "value" "camera_get_view_y(cam)"
var new_y = camera_get_view_y(cam);

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 26AABB6E
/// @DnDArgument : "expr" "new_x == viewport_left && new_y == viewport_top"
if(new_x == viewport_left && new_y == viewport_top)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 25A75FA1
	/// @DnDParent : 26AABB6E
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "moving"
	moving = false;

	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 1F72CDDE
	/// @DnDParent : 26AABB6E
	exit;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 69E0E94E
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 794323FB
	/// @DnDParent : 69E0E94E
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "moving"
	moving = true;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 765F7D5C
/// @DnDArgument : "expr" "new_x < viewport_left"
if(new_x < viewport_left)
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 7A60D2BB
	/// @DnDParent : 765F7D5C
	/// @DnDArgument : "expr" "viewport_left - new_x < move_speed"
	if(viewport_left - new_x < move_speed)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3765F3BB
		/// @DnDParent : 7A60D2BB
		/// @DnDArgument : "expr" "viewport_left"
		/// @DnDArgument : "var" "new_x"
		new_x = viewport_left;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 2C873988
	/// @DnDParent : 765F7D5C
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3188584E
		/// @DnDParent : 2C873988
		/// @DnDArgument : "expr" "move_speed"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "new_x"
		new_x += move_speed;
	}
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 3205A772
/// @DnDArgument : "expr" "new_x > viewport_left"
if(new_x > viewport_left)
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 32116DDB
	/// @DnDParent : 3205A772
	/// @DnDArgument : "expr" "new_x - viewport_left < move_speed"
	if(new_x - viewport_left < move_speed)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0185853D
		/// @DnDParent : 32116DDB
		/// @DnDArgument : "expr" "viewport_left"
		/// @DnDArgument : "var" "new_x"
		new_x = viewport_left;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 120C3A6C
	/// @DnDParent : 3205A772
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2744F041
		/// @DnDParent : 120C3A6C
		/// @DnDArgument : "expr" "move_speed * -1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "new_x"
		new_x += move_speed * -1;
	}
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 1BE5F4E0
/// @DnDArgument : "expr" "new_y < viewport_top"
if(new_y < viewport_top)
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 0A15863B
	/// @DnDParent : 1BE5F4E0
	/// @DnDArgument : "expr" "viewport_top - new_y < move_speed"
	if(viewport_top - new_y < move_speed)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 17D2A581
		/// @DnDParent : 0A15863B
		/// @DnDArgument : "expr" "viewport_top"
		/// @DnDArgument : "var" "new_y"
		new_y = viewport_top;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 5E25905E
	/// @DnDParent : 1BE5F4E0
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4B038755
		/// @DnDParent : 5E25905E
		/// @DnDArgument : "expr" "move_speed"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "new_y"
		new_y += move_speed;
	}
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 2359D005
/// @DnDArgument : "expr" "new_y > viewport_top"
if(new_y > viewport_top)
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 1BC6400A
	/// @DnDParent : 2359D005
	/// @DnDArgument : "expr" "new_y - viewport_top < move_speed"
	if(new_y - viewport_top < move_speed)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6613E76F
		/// @DnDParent : 1BC6400A
		/// @DnDArgument : "expr" "viewport_top"
		/// @DnDArgument : "var" "new_y"
		new_y = viewport_top;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 7EF4C936
	/// @DnDParent : 2359D005
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 36EB6C68
		/// @DnDParent : 7EF4C936
		/// @DnDArgument : "expr" "move_speed * -1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "new_y"
		new_y += move_speed * -1;
	}
}

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 0C45BD65
/// @DnDInput : 3
/// @DnDArgument : "function" "camera_set_view_pos"
/// @DnDArgument : "arg" "cam"
/// @DnDArgument : "arg_1" "new_x"
/// @DnDArgument : "arg_2" "new_y"
camera_set_view_pos(cam, new_x, new_y);