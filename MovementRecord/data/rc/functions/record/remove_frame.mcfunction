data remove storage minecraft:animation TempAnimation.Frames[-1]
execute at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 0.5
scoreboard players remove @s rc_frames 1