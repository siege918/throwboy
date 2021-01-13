/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7466E904
/// @DnDArgument : "expr" "true"
/// @DnDArgument : "var" "solid"
solid = true;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7D4224B9
/// @DnDArgument : "var" "speed"
speed = 0;

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 082E8565
/// @DnDArgument : "expr" "carried"
if(carried)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 37050C0A
	/// @DnDParent : 082E8565
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "carried"
	carried = false;

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 1BFF8714
	/// @DnDParent : 082E8565
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "var" "carriedItem"
	/// @DnDArgument : "objectid" "oJar"
	/// @DnDArgument : "layer" ""Carrying_instances""
	/// @DnDSaveInfo : "objectid" "oJar"
	carriedItem = instance_create_layer(x + 0, y + 0, "Carrying_instances", oJar);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 095744B8
	/// @DnDParent : 082E8565
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "carriedItem.carried"
	carriedItem.carried = true;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2A515DE3
	/// @DnDParent : 082E8565
	/// @DnDArgument : "expr" "carriedItem"
	/// @DnDArgument : "var" "oPlayer.carrying"
	oPlayer.carrying = carriedItem;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 71058B3E
	/// @DnDParent : 082E8565
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "carriedItem.solid"
	carriedItem.solid = false;
}