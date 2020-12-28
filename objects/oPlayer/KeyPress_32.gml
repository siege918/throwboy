/// @DnDAction : YoYo Games.Collisions.If_Collision_Point
/// @DnDVersion : 1
/// @DnDHash : 2789B97E
/// @DnDArgument : "x" "8"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "24"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "target" "throwable"
/// @DnDArgument : "target_temp" "1"
/// @DnDArgument : "obj" "iThrowable"
/// @DnDArgument : "destroylist" "false"
/// @DnDSaveInfo : "obj" "iThrowable"
var l2789B97E_0 = collision_point(x + 8, y + 24, iThrowable, true, 1);
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
		/// @DnDBreak : 1
	
		/// @DnDParent : 2E6EF177
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "throwable.solid"
		throwable.solid = false;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0F843206
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
		/// @DnDArgument : "expr" "5"
		/// @DnDArgument : "var" "throwable.speed"
		throwable.speed = 5;
	}
}