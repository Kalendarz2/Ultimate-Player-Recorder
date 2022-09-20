data modify entity @s Pos set from entity @s data.Frame.Pos
execute at @s unless data storage minecraft:animation Edit{Position:1} run tp @e[tag=frame] ~ ~ ~
execute at @s unless entity @p[tag=in_editor,distance=..128] run tp @p[tag=in_editor] @s