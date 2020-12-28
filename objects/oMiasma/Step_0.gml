/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2FFDDEF1
/// @DnDArgument : "expr" "oPlayer.carrying"
/// @DnDArgument : "var" "throwable"
throwable = oPlayer.carrying;

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 00E7D3AD
/// @DnDArgument : "expr" "throwable"
if(throwable)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5FA94ACD
	/// @DnDParent : 00E7D3AD
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "visible"
	visible = true;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 435A130F
	/// @DnDParent : 00E7D3AD
	/// @DnDArgument : "expr" "throwable.x - 2"
	/// @DnDArgument : "var" "x"
	x = throwable.x - 2;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2FF2F869
	/// @DnDParent : 00E7D3AD
	/// @DnDArgument : "expr" "throwable.y - 2"
	/// @DnDArgument : "var" "y"
	y = throwable.y - 2;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 626B1FC1
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6BCC7DEC
	/// @DnDParent : 626B1FC1
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "visible"
	visible = false;
}