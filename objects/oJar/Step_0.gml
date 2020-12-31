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
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 1EAC117E
	/// @DnDParent : 563F90D6
	/// @DnDArgument : "expr" "throw_started"
	/// @DnDArgument : "not" "1"
	if(!(throw_started))
	{
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 567BC2FF
		/// @DnDParent : 1EAC117E
		/// @DnDArgument : "speed" "5"
		speed = 5;
	
		/// @DnDAction : YoYo Games.Movement.Set_Direction_Free
		/// @DnDVersion : 1
		/// @DnDHash : 54799355
		/// @DnDParent : 1EAC117E
		/// @DnDArgument : "direction" "throw_direction"
		direction = throw_direction;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7CFE42AB
		/// @DnDParent : 1EAC117E
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "throw_started"
		throw_started = true;
	}

	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 68E11258
	/// @DnDParent : 563F90D6
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "oWall"
	/// @DnDSaveInfo : "object" "oWall"
	var l68E11258_0 = instance_place(x + 0, y + 0, oWall);
	if ((l68E11258_0 > 0))
	{
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 40126379
		/// @DnDParent : 68E11258
		instance_destroy();
	}
}