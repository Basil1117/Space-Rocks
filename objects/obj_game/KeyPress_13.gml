/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 14A7048E
/// @DnDArgument : "expr" "room"
var l14A7048E_0 = room;
switch(l14A7048E_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 74A1B82A
	/// @DnDParent : 14A7048E
	/// @DnDArgument : "const" "rm_start"
	case rm_start:
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 4568D5BA
		/// @DnDParent : 74A1B82A
		/// @DnDArgument : "room" "rm_game"
		/// @DnDSaveInfo : "room" "rm_game"
		room_goto(rm_game);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 2915D091
	/// @DnDParent : 14A7048E
	/// @DnDArgument : "const" "rm_gameover"
	case rm_gameover:
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 7D7EDA45
		/// @DnDParent : 2915D091
		/// @DnDArgument : "room" "rm_start"
		/// @DnDSaveInfo : "room" "rm_start"
		room_goto(rm_start);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 14EA0F0F
	/// @DnDParent : 14A7048E
	/// @DnDArgument : "const" "rm_win"
	case rm_win:
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 28BE2CBB
		/// @DnDParent : 14EA0F0F
		/// @DnDArgument : "room" "rm_start"
		/// @DnDSaveInfo : "room" "rm_start"
		room_goto(rm_start);
		break;
}