execute store result score $id rc_time run data get storage minecraft:animation Item[0].id
execute unless score $id rc_time = @s item run data remove storage minecraft:animation Item[0]
execute unless score $id rc_time = @s item run function rc:item/item_loop