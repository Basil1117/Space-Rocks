/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Score
/// @DnDVersion : 1
/// @DnDHash : 76924A73
/// @DnDArgument : "x" "20"
/// @DnDArgument : "y" "20"
if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
draw_text(20, 20, string("Score: ") + string(__dnd_score));

/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Lives
/// @DnDVersion : 1
/// @DnDHash : 6053A79C
/// @DnDArgument : "x" "20"
/// @DnDArgument : "y" "40"
/// @DnDArgument : "sprite" "spr_lives"
/// @DnDSaveInfo : "sprite" "spr_lives"
var l6053A79C_0 = sprite_get_width(spr_lives);
var l6053A79C_1 = 0;
if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
for(var l6053A79C_2 = __dnd_lives; l6053A79C_2 > 0; --l6053A79C_2) {
	draw_sprite(spr_lives, 0, 20 + l6053A79C_1, 40);
	l6053A79C_1 += l6053A79C_0;
}