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
	/// @DnDArgument : "speed" "2"
	image_speed = 2;
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

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 6A2517FA
/// @DnDArgument : "expr" "__facing == 0 && sprite_index != player_back"
if(__facing == 0 && sprite_index != player_back)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 5306FA94
	/// @DnDParent : 6A2517FA
	/// @DnDArgument : "spriteind" "player_back"
	/// @DnDSaveInfo : "spriteind" "player_back"
	sprite_index = player_back;
	image_index = 0;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 1603291C
/// @DnDArgument : "expr" "__facing == 1 && sprite_index != player_right"
if(__facing == 1 && sprite_index != player_right)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 2EC35936
	/// @DnDParent : 1603291C
	/// @DnDArgument : "spriteind" "player_right"
	/// @DnDSaveInfo : "spriteind" "player_right"
	sprite_index = player_right;
	image_index = 0;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 12740ACE
/// @DnDArgument : "expr" "__facing == 2 && sprite_index != player_front"
if(__facing == 2 && sprite_index != player_front)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 339633F8
	/// @DnDParent : 12740ACE
	/// @DnDArgument : "spriteind" "player_front"
	/// @DnDSaveInfo : "spriteind" "player_front"
	sprite_index = player_front;
	image_index = 0;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 1F57D6D3
/// @DnDArgument : "expr" "__facing == 3 && sprite_index != player_left"
if(__facing == 3 && sprite_index != player_left)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 5AA1FE91
	/// @DnDParent : 1F57D6D3
	/// @DnDArgument : "spriteind" "player_left"
	/// @DnDSaveInfo : "spriteind" "player_left"
	sprite_index = player_left;
	image_index = 0;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 147E5340
/// @DnDArgument : "expr" "__x_direction != 0 || __y_direction != 0"
if(__x_direction != 0 || __y_direction != 0)
{
	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5F4FD521
	/// @DnDParent : 147E5340
	/// @DnDArgument : "var" "movement_direction"
	/// @DnDArgument : "value" "point_direction(0, 0, __x_direction, __y_direction)"
	var movement_direction = point_direction(0, 0, __x_direction, __y_direction);

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 2C154021
	/// @DnDParent : 147E5340
	/// @DnDArgument : "function" "motion_set(movement_direction, __speed)"
	motion_set(movement_direction, __speed)();
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 41C38AA4
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6EBA8BF1
	/// @DnDParent : 41C38AA4
	/// @DnDArgument : "var" "speed"
	speed = 0;
}