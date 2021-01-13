/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 15CAF47B
/// @DnDArgument : "function" "event_inherited"
event_inherited();

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 563F90D6
/// @DnDArgument : "expr" "throwing"
if(throwing)
{
	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 43E8CB84
	/// @DnDParent : 563F90D6
	/// @DnDArgument : "var" "reachedFloor"
	/// @DnDArgument : "value" "false"
	var reachedFloor = false;

	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7CFB1F11
	/// @DnDParent : 563F90D6
	/// @DnDArgument : "var" "hitWall"
	/// @DnDArgument : "value" "false"
	var hitWall = false;

	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 12D6011D
	/// @DnDParent : 563F90D6
	/// @DnDArgument : "var" "reachedMaxDistance"
	/// @DnDArgument : "value" "false"
	var reachedMaxDistance = false;

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 1EAC117E
	/// @DnDParent : 563F90D6
	/// @DnDArgument : "expr" "throw_started"
	/// @DnDArgument : "not" "1"
	if(!(throw_started))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 10C55CE3
		/// @DnDParent : 1EAC117E
		/// @DnDArgument : "expr" "x"
		/// @DnDArgument : "var" "throw_start_x"
		throw_start_x = x;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 64ABBDE4
		/// @DnDParent : 1EAC117E
		/// @DnDArgument : "expr" "y"
		/// @DnDArgument : "var" "throw_start_y"
		throw_start_y = y;
	
		/// @DnDAction : YoYo Games.Movement.Set_Direction_Free
		/// @DnDVersion : 1
		/// @DnDHash : 54799355
		/// @DnDParent : 1EAC117E
		/// @DnDArgument : "direction" "throw_direction"
		direction = throw_direction;
	
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 567BC2FF
		/// @DnDParent : 1EAC117E
		/// @DnDArgument : "speed" "5"
		speed = 5;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7CFE42AB
		/// @DnDParent : 1EAC117E
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "throw_started"
		throw_started = true;
	}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 2463A124
	/// @DnDParent : 563F90D6
	/// @DnDArgument : "expr" "throw_direction == 0 || throw_direction == 180"
	if(throw_direction == 0 || throw_direction == 180)
	{
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 1CDD43F7
		/// @DnDParent : 2463A124
		/// @DnDArgument : "speed" ".17"
		/// @DnDArgument : "speed_relative" "1"
		/// @DnDArgument : "type" "2"
		vspeed += .17;
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 202F2C59
		/// @DnDParent : 2463A124
		/// @DnDArgument : "expr" "y + 16 > floor_y"
		if(y + 16 > floor_y)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 39958F49
			/// @DnDBreak : 1
		
			/// @DnDParent : 202F2C59
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "var" "reachedFloor"
			reachedFloor = true;
		}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 19FCA0C6
		/// @DnDParent : 2463A124
		/// @DnDArgument : "expr" "collision_point(x, floor_y, oWall, false, true) || collision_point(x + 16, floor_y, oWall, false, true)"
		/// @DnDArgument : "var" "hitWall"
		hitWall = collision_point(x, floor_y, oWall, false, true) || collision_point(x + 16, floor_y, oWall, false, true);
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 7FCB4FDD
	/// @DnDParent : 563F90D6
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6B60A593
		/// @DnDParent : 7FCB4FDD
		/// @DnDArgument : "expr" "collision_point(x + 8, y, oWall, false, true) || collision_point(x + 8, y + 16, oWall, false, true)"
		/// @DnDArgument : "var" "hitWall"
		hitWall = collision_point(x + 8, y, oWall, false, true) || collision_point(x + 8, y + 16, oWall, false, true);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 10064F32
		/// @DnDParent : 7FCB4FDD
		/// @DnDArgument : "expr" "point_distance(x, throw_start_y, throw_start_x, throw_start_y) > throw_distance || point_distance(throw_start_x, y, throw_start_x, throw_start_y) > throw_distance"
		/// @DnDArgument : "var" "reachedMaxDistance"
		reachedMaxDistance = point_distance(x, throw_start_y, throw_start_x, throw_start_y) > throw_distance || point_distance(throw_start_x, y, throw_start_x, throw_start_y) > throw_distance;
	}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 4427DF8D
	/// @DnDParent : 563F90D6
	/// @DnDArgument : "expr" "reachedMaxDistance || reachedFloor || hitWall"
	if(reachedMaxDistance || reachedFloor || hitWall)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 239641AA
		/// @DnDBreak : 1
	
		/// @DnDParent : 4427DF8D
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "throwing"
		throwing = false;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 468E9158
		/// @DnDParent : 4427DF8D
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "broken"
		broken = true;
	
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 70BC9B0A
		/// @DnDParent : 4427DF8D
		/// @DnDArgument : "spriteind" "jar_broken"
		/// @DnDSaveInfo : "spriteind" "jar_broken"
		sprite_index = jar_broken;
		image_index = 0;
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 03297C89
		/// @DnDParent : 4427DF8D
		/// @DnDArgument : "soundid" "crash"
		/// @DnDSaveInfo : "soundid" "crash"
		audio_play_sound(crash, 0, 0);
	
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 440A5AD3
		/// @DnDParent : 4427DF8D
		/// @DnDArgument : "steps" "10"
		alarm_set(0, 10);
	}
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 3441974E
/// @DnDArgument : "expr" "broken"
if(broken)
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 78659C1A
	/// @DnDParent : 3441974E
	speed = 0;
}