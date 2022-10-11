bossbar set minecraft:recording name ["",{"text":"● ","color":"red"},{"text":"Recording..."},{"text":" | ","color":"gray"},{"text":"Waiting for movement","color":"gold"}]
execute at @s[tag=!rc_wait] run summon marker ~ ~ ~ {Tags:["record_wait_move","rc_cancel"]}
scoreboard players add @e[tag=record_wait_move] rc_id 0
execute if entity @s[tag=!rc_wait] run scoreboard players operation @e[tag=record_wait_move,scores={rc_id=0}] rc_id = @s rc_id
tag @s add rc_wait

execute at @s unless entity @e[tag=record_wait_move,distance=..0.01] run function rc:record/start/start