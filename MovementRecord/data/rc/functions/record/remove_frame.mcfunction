execute at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 0.5
scoreboard players remove @s rc_frames 1
data remove entity @e[tag=this_rc_data,limit=1] data.Frames[-1]

#Load older frames to buffer
function rc:record/storage_slot/last_frame