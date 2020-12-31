/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 55310E9F
/// @DnDArgument : "expr" "carrying"
if(carrying)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1753481C
	/// @DnDBreak : 1

	/// @DnDParent : 55310E9F
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "carrying.throwing"
	carrying.throwing = true;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3F253C13
	/// @DnDParent : 55310E9F
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "carrying.carried"
	carrying.carried = false;

	/// @DnDAction : YoYo Games.Switch.Switch
	/// @DnDVersion : 1
	/// @DnDHash : 0AD2CA04
	/// @DnDParent : 55310E9F
	/// @DnDArgument : "expr" "sprite_index"
	var l0AD2CA04_0 = sprite_index;
	switch(l0AD2CA04_0)
	{
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 4EC597DA
		/// @DnDParent : 0AD2CA04
		/// @DnDArgument : "const" "player_back"
		case player_back:
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3A00AFEB
			/// @DnDParent : 4EC597DA
			/// @DnDArgument : "expr" "90"
			/// @DnDArgument : "var" "carrying.throw_direction"
			carrying.throw_direction = 90;
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 1D293727
		/// @DnDParent : 0AD2CA04
		/// @DnDArgument : "const" "player_right"
		case player_right:
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 16AEB684
			/// @DnDParent : 1D293727
			/// @DnDArgument : "var" "carrying.throw_direction"
			carrying.throw_direction = 0;
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 4A961DC8
		/// @DnDParent : 0AD2CA04
		/// @DnDArgument : "const" "player_front"
		case player_front:
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 619E6343
			/// @DnDParent : 4A961DC8
			/// @DnDArgument : "expr" "270"
			/// @DnDArgument : "var" "carrying.throw_direction"
			carrying.throw_direction = 270;
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 78685067
		/// @DnDParent : 0AD2CA04
		/// @DnDArgument : "const" "player_left"
		case player_left:
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 46D5DDE8
			/// @DnDParent : 78685067
			/// @DnDArgument : "expr" "180"
			/// @DnDArgument : "var" "carrying.throw_direction"
			carrying.throw_direction = 180;
			break;
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4F4C2C69
	/// @DnDParent : 55310E9F
	/// @DnDArgument : "expr" "noone"
	/// @DnDArgument : "var" "carrying"
	carrying = noone;
}

/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 6FE6EC57
/// @DnDArgument : "expr" "sprite_index"
var l6FE6EC57_0 = sprite_index;
switch(l6FE6EC57_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 1C1CAEB8
	/// @DnDParent : 6FE6EC57
	/// @DnDArgument : "const" "player_back"
	case player_back:
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2879FC3E
		/// @DnDParent : 1C1CAEB8
		/// @DnDArgument : "var" "grabY"
		/// @DnDArgument : "value" "-8"
		var grabY = -8;
	
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6F84FB20
		/// @DnDParent : 1C1CAEB8
		/// @DnDArgument : "var" "grabX"
		/// @DnDArgument : "value" "8"
		var grabX = 8;
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 3AB7C26B
	/// @DnDParent : 6FE6EC57
	/// @DnDArgument : "const" "player_right"
	case player_right:
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0CF42031
		/// @DnDParent : 3AB7C26B
		/// @DnDArgument : "var" "grabY"
		/// @DnDArgument : "value" "8"
		var grabY = 8;
	
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4767A131
		/// @DnDParent : 3AB7C26B
		/// @DnDArgument : "var" "grabX"
		/// @DnDArgument : "value" "24"
		var grabX = 24;
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 3A9FEEFB
	/// @DnDParent : 6FE6EC57
	/// @DnDArgument : "const" "player_front"
	case player_front:
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7C7FA0E4
		/// @DnDParent : 3A9FEEFB
		/// @DnDArgument : "var" "grabX"
		/// @DnDArgument : "value" "8"
		var grabX = 8;
	
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 560E7D53
		/// @DnDParent : 3A9FEEFB
		/// @DnDArgument : "var" "grabY"
		/// @DnDArgument : "value" "24"
		var grabY = 24;
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 4C60BEBE
	/// @DnDParent : 6FE6EC57
	/// @DnDArgument : "const" "player_left"
	case player_left:
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3F2B1EE6
		/// @DnDParent : 4C60BEBE
		/// @DnDArgument : "var" "grabY"
		/// @DnDArgument : "value" "8"
		var grabY = 8;
	
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4A4B6C9F
		/// @DnDParent : 4C60BEBE
		/// @DnDArgument : "var" "grabX"
		/// @DnDArgument : "value" "-8"
		var grabX = -8;
		break;
}

/// @DnDAction : YoYo Games.Collisions.If_Collision_Point
/// @DnDVersion : 1
/// @DnDHash : 2789B97E
/// @DnDArgument : "x" "grabX"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "grabY"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "target" "throwable"
/// @DnDArgument : "target_temp" "1"
/// @DnDArgument : "obj" "iThrowable"
/// @DnDArgument : "destroylist" "false"
/// @DnDSaveInfo : "obj" "iThrowable"
var l2789B97E_0 = collision_point(x + grabX, y + grabY, iThrowable, true, 1);
var throwable = l2789B97E_0;
if((l2789B97E_0))
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 2E6EF177
	/// @DnDParent : 2789B97E
	/// @DnDArgument : "expr" "!carrying"
	if(!carrying)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6D183EA6
		/// @DnDParent : 2E6EF177
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "throwable.solid"
		throwable.solid = false;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0F843206
		/// @DnDBreak : 1
	
		/// @DnDParent : 2E6EF177
		/// @DnDArgument : "expr" "throwable.id"
		/// @DnDArgument : "var" "carrying"
		carrying = throwable.id;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3B6C7C8A
		/// @DnDParent : 2E6EF177
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "throwable.carried"
		throwable.carried = true;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 131CA46E
		/// @DnDParent : 2E6EF177
		/// @DnDArgument : "expr" "2"
		/// @DnDArgument : "var" "throwable.speed"
		throwable.speed = 2;
	}
}