/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 3074698F
/// @DnDArgument : "expr" "sprite_index == plant_growing"
if(sprite_index == plant_growing)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 312063CE
	/// @DnDParent : 3074698F
	/// @DnDArgument : "spriteind" "plant"
	/// @DnDSaveInfo : "spriteind" "plant"
	sprite_index = plant;
	image_index = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3DF8DDA0
	/// @DnDParent : 3074698F
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "growing"
	growing = false;
}