/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 460DFEDC
/// @DnDArgument : "var" "cam"
/// @DnDArgument : "value" "view_camera[0]"
var cam = view_camera[0];

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 6D90FD87
/// @DnDArgument : "expr" "oRoomHandler.moving"
/// @DnDArgument : "not" "1"
if(!(oRoomHandler.moving))
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 0E27684F
	/// @DnDParent : 6D90FD87
	/// @DnDArgument : "expr" "y < camera_get_view_y(cam)"
	if(y < camera_get_view_y(cam))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3BF9CE02
		/// @DnDParent : 0E27684F
		/// @DnDArgument : "expr" "-1 * camera_get_view_height(cam)"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "oRoomHandler.viewport_top"
		oRoomHandler.viewport_top += -1 * camera_get_view_height(cam);
	}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 4C9FED02
	/// @DnDParent : 6D90FD87
	/// @DnDArgument : "expr" "y > (camera_get_view_y(cam) + camera_get_view_height(cam))"
	if(y > (camera_get_view_y(cam) + camera_get_view_height(cam)))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 73D77683
		/// @DnDParent : 4C9FED02
		/// @DnDArgument : "expr" "camera_get_view_height(cam)"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "oRoomHandler.viewport_top"
		oRoomHandler.viewport_top += camera_get_view_height(cam);
	}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 7096B015
	/// @DnDParent : 6D90FD87
	/// @DnDArgument : "expr" "x < camera_get_view_x(cam) "
	if(x < camera_get_view_x(cam) )
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0B12EF52
		/// @DnDParent : 7096B015
		/// @DnDArgument : "expr" "-1 * camera_get_view_width(cam)"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "oRoomHandler.viewport_left"
		oRoomHandler.viewport_left += -1 * camera_get_view_width(cam);
	}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 3AF442B1
	/// @DnDParent : 6D90FD87
	/// @DnDArgument : "expr" "x > (camera_get_view_x(cam) + camera_get_view_width(cam))"
	if(x > (camera_get_view_x(cam) + camera_get_view_width(cam)))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 71A030B5
		/// @DnDParent : 3AF442B1
		/// @DnDArgument : "expr" "camera_get_view_width(cam)"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "oRoomHandler.viewport_left"
		oRoomHandler.viewport_left += camera_get_view_width(cam);
	}
}