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