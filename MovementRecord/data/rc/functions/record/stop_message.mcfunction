#Message
execute unless data storage minecraft:animation TempAnimation{Length:0} at @s run playsound minecraft:entity.player.levelup master @s
execute unless data storage minecraft:animation TempAnimation{Length:0} run tellraw @s {"text":"Animation saved successfully!","color":"green"}

execute if data storage minecraft:animation TempAnimation{Length:0} at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0.5 1
execute if data storage minecraft:animation TempAnimation{Length:0} run tellraw @s {"text":"Animation did not contain any frames and was not saved.","color":"red"}