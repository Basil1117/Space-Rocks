/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0681F0FE
/// @DnDArgument : "var" "room"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "rm_game"
if(!(room == rm_game))
{
	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 26E8B52E
	/// @DnDParent : 0681F0FE
	exit;
}

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 547B0B8D
/// @DnDArgument : "steps" "60*4"
alarm_set(0, 60*4);

/// @DnDAction : YoYo Games.Random.Choose
/// @DnDVersion : 1
/// @DnDHash : 7DB93C2E
/// @DnDInput : 2
/// @DnDArgument : "var" "choice"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "option_1" "1"
var choice = choose(0, 1);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 558F4CB0
/// @DnDArgument : "var" "choice"
if(choice == 0)
{
	/// @DnDAction : YoYo Games.Random.Choose
	/// @DnDVersion : 1
	/// @DnDHash : 4935700D
	/// @DnDInput : 2
	/// @DnDParent : 558F4CB0
	/// @DnDArgument : "var" "xx"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "option" "room_width"
	var xx = choose(room_width, 0);

	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 62C3B35F
	/// @DnDParent : 558F4CB0
	/// @DnDArgument : "var" "yy"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "max" "room_height"
	var yy = floor(random_range(0, room_height + 1));
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 31C699D2
else
{
	/// @DnDAction : YoYo Games.Random.Choose
	/// @DnDVersion : 1
	/// @DnDHash : 404DF76D
	/// @DnDInput : 2
	/// @DnDParent : 31C699D2
	/// @DnDArgument : "var" "yy"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "option" "room_height"
	var yy = choose(room_height, 0);

	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 0E7FB45D
	/// @DnDParent : 31C699D2
	/// @DnDArgument : "var" "xx"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "max" "room_width"
	var xx = floor(random_range(0, room_width + 1));
}

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 7D5B567D
/// @DnDArgument : "xpos" "xx"
/// @DnDArgument : "ypos" "yy"
/// @DnDArgument : "objectid" "obj_asteroid"
/// @DnDSaveInfo : "objectid" "obj_asteroid"
instance_create_layer(xx, yy, "Instances", obj_asteroid);