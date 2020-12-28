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
/// @DnDArgument : "expr" "__y_direction < 0"
if(__y_direction < 0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5FD11052
	/// @DnDParent : 6A2517FA
	/// @DnDArgument : "var" "sprite_index"
	/// @DnDArgument : "not" "1"
	/// @DnDArgument : "value" "player_back"
	if(!(sprite_index == player_back))
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 5306FA94
		/// @DnDParent : 5FD11052
		/// @DnDArgument : "spriteind" "player_back"
		/// @DnDSaveInfo : "spriteind" "player_back"
		sprite_index = player_back;
		image_index = 0;
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 7930FD09
else
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 1F57D6D3
	/// @DnDParent : 7930FD09
	/// @DnDArgument : "expr" "__y_direction > 0"
	if(__y_direction > 0)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 36337583
		/// @DnDParent : 1F57D6D3
		/// @DnDArgument : "var" "sprite_index"
		/// @DnDArgument : "not" "1"
		/// @DnDArgument : "value" "player_front"
		if(!(sprite_index == player_front))
		{
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 5AA1FE91
			/// @DnDParent : 36337583
			/// @DnDArgument : "spriteind" "player_front"
			/// @DnDSaveInfo : "spriteind" "player_front"
			sprite_index = player_front;
			image_index = 0;
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 5DC414C8
	/// @DnDParent : 7930FD09
	else
	{
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 1603291C
		/// @DnDParent : 5DC414C8
		/// @DnDArgument : "expr" "__x_direction > 0"
		if(__x_direction > 0)
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4D4E9858
			/// @DnDParent : 1603291C
			/// @DnDArgument : "var" "sprite_index"
			/// @DnDArgument : "not" "1"
			/// @DnDArgument : "value" "player_right"
			if(!(sprite_index == player_right))
			{
				/// @DnDAction : YoYo Games.Instances.Set_Sprite
				/// @DnDVersion : 1
				/// @DnDHash : 2EC35936
				/// @DnDParent : 4D4E9858
				/// @DnDArgument : "spriteind" "player_right"
				/// @DnDSaveInfo : "spriteind" "player_right"
				sprite_index = player_right;
				image_index = 0;
			}
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 1A4DB597
		/// @DnDParent : 5DC414C8
		else
		{
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 12740ACE
			/// @DnDParent : 1A4DB597
			/// @DnDArgument : "expr" "__x_direction < 0"
			if(__x_direction < 0)
			{
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 778AC0DD
				/// @DnDParent : 12740ACE
				/// @DnDArgument : "var" "sprite_index"
				/// @DnDArgument : "not" "1"
				/// @DnDArgument : "value" "player_left"
				if(!(sprite_index == player_left))
				{
					/// @DnDAction : YoYo Games.Instances.Set_Sprite
					/// @DnDVersion : 1
					/// @DnDHash : 339633F8
					/// @DnDParent : 778AC0DD
					/// @DnDArgument : "spriteind" "player_left"
					/// @DnDSaveInfo : "spriteind" "player_left"
					sprite_index = player_left;
					image_index = 0;
				}
			}
		}
	}
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
	/// @DnDInput : 2
	/// @DnDParent : 147E5340
	/// @DnDArgument : "function" "motion_set"
	/// @DnDArgument : "arg" "movement_direction"
	/// @DnDArgument : "arg_1" "__speed"
	motion_set(movement_direction, __speed);
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