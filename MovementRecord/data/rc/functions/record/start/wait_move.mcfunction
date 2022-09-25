bossbar set minecraft:recording name ["",{"text":"● ","color":"red"},{"text":"Recording..."},{"text":" | ","color":"gray"},{"text":"Waiting for movement","color":"gold"}]
execute at @s[tag=!rc_wait] run summon marker ~ ~ ~ {Tags:["record_wait_move"]}
tag @s add rc_wait

execute at @s unless entity @e[tag=record_wait_move,distance=..0.01] run function rc:record/start/start