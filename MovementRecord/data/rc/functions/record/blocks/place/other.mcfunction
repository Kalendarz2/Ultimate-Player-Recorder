summon armor_stand ~ ~ ~ {Tags:["rc_item_holder"]}
loot replace entity @e[tag=rc_item_holder,limit=1] weapon.mainhand mine ~ ~ ~ shears{Record:1,Enchantments:[{id:"minecraft:silk_touch",lvl:1}]}
data modify storage minecraft:animation TempBlock.Placed[0].Name set from entity @e[tag=rc_item_holder,limit=1] HandItems[0].id
data modify storage minecraft:animation TempBlock.Placed[0].Properties set from entity @e[tag=rc_item_holder,limit=1] HandItems[0].tag.BlockStateTag
data modify storage minecraft:animation TempBlock.Placed[0].TileEntityData set from entity @e[tag=rc_item_holder,limit=1] HandItems[0].tag.BlockEntityTag
kill @e[tag=rc_item_holder]

#Different item from the block
execute if block ~ ~ ~ #rc:corals[waterlogged=false] run data modify storage minecraft:animation TempBlock.Placed[0].Properties set value {waterlogged:"false"}

execute if block ~ ~ ~ fire run data modify storage minecraft:animation TempBlock.Placed[0].Name set value "minecraft:fire"
execute if block ~ ~ ~ water run data modify storage minecraft:animation TempBlock.Placed[0].Name set value "minecraft:water"
execute if block ~ ~ ~ lava run data modify storage minecraft:animation TempBlock.Placed[0].Name set value "minecraft:lava"
execute if block ~ ~ ~ redstone_wire run data modify storage minecraft:animation TempBlock.Placed[0].Name set value "minecraft:redstone_wire"
execute if block ~ ~ ~ tripwire run data modify storage minecraft:animation TempBlock.Placed[0].Name set value "minecraft:tripwire"
execute if block ~ ~ ~ powder_snow run data modify storage minecraft:animation TempBlock.Placed[0].Name set value "minecraft:powder_snow"

execute if block ~ ~ ~ cave_vines run data modify storage minecraft:animation TempBlock.Temp.Name set value "minecraft:cave_vines"
execute if block ~ ~ ~ cave_vines_plant run data modify storage minecraft:animation TempBlock.Temp.Name set value "minecraft:cave_vines_plant"

execute if block ~ ~ ~ beetroots run data modify storage minecraft:animation TempBlock.Temp.Name set value "minecraft:beetroots"
execute if block ~ ~ ~ carrots run data modify storage minecraft:animation TempBlock.Temp.Name set value "minecraft:carrots"
execute if block ~ ~ ~ potatoes run data modify storage minecraft:animation TempBlock.Temp.Name set value "minecraft:potatoes"
execute if block ~ ~ ~ wheat run data modify storage minecraft:animation TempBlock.Temp.Name set value "minecraft:wheat"
execute if block ~ ~ ~ melon_stem run data modify storage minecraft:animation TempBlock.Temp.Name set value "minecraft:melon_stem"
execute if block ~ ~ ~ pumpkin_stem run data modify storage minecraft:animation TempBlock.Temp.Name set value "minecraft:pumpkin_stem"
execute if block ~ ~ ~ bamboo_sapling run data modify storage minecraft:animation TempBlock.Temp.Name set value "minecraft:bamboo_sapling"

execute if block ~ ~ ~ oak_wall_sign run data modify storage minecraft:animation TempBlock.Temp.Name set value "minecraft:oak_wall_sign"
execute if block ~ ~ ~ spruce_wall_sign run data modify storage minecraft:animation TempBlock.Temp.Name set value "minecraft:spruce_wall_sign"
execute if block ~ ~ ~ birch_wall_sign run data modify storage minecraft:animation TempBlock.Temp.Name set value "minecraft:birch_wall_sign"
execute if block ~ ~ ~ jungle_wall_sign run data modify storage minecraft:animation TempBlock.Temp.Name set value "minecraft:jungle_wall_sign"
execute if block ~ ~ ~ acacia_wall_sign run data modify storage minecraft:animation TempBlock.Temp.Name set value "minecraft:acacia_wall_sign"
execute if block ~ ~ ~ dark_oak_wall_sign run data modify storage minecraft:animation TempBlock.Temp.Name set value "minecraft:dark_oak_wall_sign"
execute if block ~ ~ ~ warped_wall_sign run data modify storage minecraft:animation TempBlock.Temp.Name set value "minecraft:warped_wall_sign"
execute if block ~ ~ ~ crimson_wall_sign run data modify storage minecraft:animation TempBlock.Temp.Name set value "minecraft:crimson_wall_sign"