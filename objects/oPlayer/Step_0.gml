/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 798DB872
/// @DnDArgument : "expr" "(__x_direction != 0) && (__y_direction != 0)"
if((__x_direction != 0) && (__y_direction != 0))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 171612F9
	/// @DnDParent : 798DB872
	/// @DnDArgument : "expr" "__speed * __x_direction"
	/// @DnDArgument : "var" "phy_speed_x"
	phy_speed_x = __speed * __x_direction;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 21880B67
	/// @DnDParent : 798DB872
	/// @DnDArgument : "expr" "__speed * __y_direction"
	/// @DnDArgument : "var" "phy_speed_y"
	phy_speed_y = __speed * __y_direction;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 54F4715C
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6F38B6E9
	/// @DnDParent : 54F4715C
	/// @DnDArgument : "expr" "__speed * __x_direction * sin(pi / 2)"
	/// @DnDArgument : "var" "phy_speed_x"
	phy_speed_x = __speed * __x_direction * sin(pi / 2);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 090698AE
	/// @DnDParent : 54F4715C
	/// @DnDArgument : "expr" "__speed * __y_direction / sin(pi / 2)"
	/// @DnDArgument : "var" "phy_speed_y"
	phy_speed_y = __speed * __y_direction / sin(pi / 2);
}