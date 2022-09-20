setblock ~ ~ ~ minecraft:command_block[facing=up]{auto:1,Command:"say Something went wrong when loading the command..."}
data modify block ~ ~ ~ Command set from storage minecraft:play TempFrame.Event[0].Command

tag @s remove this_d