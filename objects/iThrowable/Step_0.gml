/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 58D456EC
/// @DnDArgument : "var" "new_x"
/// @DnDArgument : "value" "oPlayer.x"
var new_x = oPlayer.x;

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 6DEC083B
/// @DnDArgument : "var" "new_y"
/// @DnDArgument : "value" "oPlayer.y - 14"
var new_y = oPlayer.y - 14;

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 306AD272
/// @DnDArgument : "expr" "carried"
if(carried)
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 5C0466EB
	/// @DnDParent : 306AD272
	/// @DnDArgument : "expr" "point_distance(x, y, new_x, new_y) < (__speed + 1)"
	if(point_distance(x, y, new_x, new_y) < (__speed + 1))
	{
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 795E74CC
		/// @DnDParent : 5C0466EB
		speed = 0;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 4DAB8125
	/// @DnDParent : 306AD272
	else
	{
		/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
		/// @DnDVersion : 1
		/// @DnDHash : 6D06533B
		/// @DnDParent : 4DAB8125
		/// @DnDArgument : "x" "new_x"
		/// @DnDArgument : "y" "new_y"
		direction = point_direction(x, y, new_x, new_y);
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 0558B4FB
		/// @DnDParent : 4DAB8125
		/// @DnDArgument : "expr" "__speed > speed"
		if(__speed > speed)
		{
			/// @DnDAction : YoYo Games.Movement.Set_Speed
			/// @DnDVersion : 1
			/// @DnDHash : 2A7D30B8
			/// @DnDParent : 0558B4FB
			/// @DnDArgument : "speed" "__speed"
			speed = __speed;
		}
	}
}