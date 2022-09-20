#Delete selected frame
kill @e[tag=selected_frame]
execute as @e[tag=frame] if score @s rc_id > $frame_edit rc_id run scoreboard players remove @s rc_id 1
scoreboard players remove $editor rc_frames 1
execute if score $frame_edit rc_id matches 2.. run scoreboard players remove $frame_edit rc_id 1