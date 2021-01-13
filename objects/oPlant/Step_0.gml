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
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 72B1764E
	/// @DnDBreak : 1

	/// @DnDParent : 082E8565
	/// @DnDArgument : "var" "growing"
	if(growing == 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5577530D
		/// @DnDParent : 72B1764E
		/// @DnDArgument : "var" "grow_count"
		grow_count = 0;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 37050C0A
		/// @DnDParent : 72B1764E
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "carried"
		carried = false;
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 1BFF8714
		/// @DnDParent : 72B1764E
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "var" "carriedItem"
		/// @DnDArgument : "objectid" "oVeggie"
		/// @DnDArgument : "layer" ""Carrying_instances""
		/// @DnDSaveInfo : "objectid" "oVeggie"
		carriedItem = instance_create_layer(x + 0, y + 0, "Carrying_instances", oVeggie);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 095744B8
		/// @DnDParent : 72B1764E
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "carriedItem.carried"
		carriedItem.carried = true;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2A515DE3
		/// @DnDParent : 72B1764E
		/// @DnDArgument : "expr" "carriedItem"
		/// @DnDArgument : "var" "oPlayer.carrying"
		oPlayer.carrying = carriedItem;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 71058B3E
		/// @DnDParent : 72B1764E
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "carriedItem.solid"
		carriedItem.solid = false;
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 085DB582
		/// @DnDParent : 72B1764E
		/// @DnDArgument : "speed" "0"
		image_speed = 0;
	
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 59498D43
		/// @DnDParent : 72B1764E
		/// @DnDArgument : "spriteind" "plant_growing"
		/// @DnDSaveInfo : "spriteind" "plant_growing"
		sprite_index = plant_growing;
		image_index = 0;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2693B716
		/// @DnDParent : 72B1764E
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "growing"
		growing = true;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 5EDD856E
	/// @DnDParent : 082E8565
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 30ED9681
		/// @DnDParent : 5EDD856E
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "carried"
		carried = false;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0F516FFF
		/// @DnDParent : 5EDD856E
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "var" "oPlayer.carrying"
		oPlayer.carrying = -1;
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 4C95C10C
else
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 7E8B31A2
	/// @DnDParent : 4C95C10C
	/// @DnDArgument : "expr" "growing"
	if(growing)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3E1C8A23
		/// @DnDParent : 7E8B31A2
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "grow_count"
		grow_count += 1;
	}
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 1ED12C68
/// @DnDArgument : "expr" "grow_count > 60"
if(grow_count > 60)
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 149C9F75
	/// @DnDParent : 1ED12C68
	image_speed = 1;
}