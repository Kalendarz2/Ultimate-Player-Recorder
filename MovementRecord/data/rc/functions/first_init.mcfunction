#Reset
execute unless data storage minecraft:animation DPCheck2 run function rc:reset
data modify storage animation DPCheck set value 1

#First Init
scoreboard objectives add record trigger
scoreboard objectives add menu trigger
scoreboard objectives add edit trigger
scoreboard objectives add item trigger
scoreboard objectives add import trigger
scoreboard objectives add copy trigger
scoreboard objectives add paste trigger
scoreboard objectives add delete trigger
scoreboard objectives add settings trigger
scoreboard objectives add animation dummy
scoreboard objectives add score dummy

scoreboard objectives add rc_shift minecraft.custom:minecraft.sneak_time
scoreboard objectives add rc_click minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add rc_frames dummy
scoreboard objectives add rc_menu dummy
scoreboard objectives add rc_time dummy
scoreboard objectives add rc_id dummy
scoreboard objectives add rc_pos_x dummy
scoreboard objectives add rc_pos_y dummy
scoreboard objectives add rc_pos_z dummy
scoreboard objectives add rc_event dummy

scoreboard players add $event1 score 0
scoreboard players add $event2 score 0
scoreboard players add $event3 score 0
scoreboard players add $event4 score 0

bossbar add recording {"text":"Recording"}
bossbar add editor {"text":"Editor"}
bossbar set minecraft:editor color blue

team add rc_red
team modify rc_red color red