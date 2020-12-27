/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 544C345A
/// @DnDArgument : "expr" "__x_direction != 0 || __y_direction != 0"
if(__x_direction != 0 || __y_direction != 0)
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 3E1492D5
	/// @DnDParent : 544C345A
	image_speed = 1;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 7461D59C
else
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 7988EF00
	/// @DnDParent : 7461D59C
	/// @DnDArgument : "speed" "0"
	image_speed = 0;
}