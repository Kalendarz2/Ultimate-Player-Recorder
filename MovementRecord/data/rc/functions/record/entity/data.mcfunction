playsound minecraft:entity.experience_orb.pickup master @a

#Set nbt
data modify storage minecraft:animation TempFrame.TempEntity set value {Type:0,Pos:[0.0,0.0,0.0],Rot:[0.0,0.0],Motion:[0.0,0.0,0.0]}
execute store result storage minecraft:animation TempFrame.TempEntity.Motion[0] double 0.01 run data get entity @s Motion[0] 100
execute store result storage minecraft:animation TempFrame.TempEntity.Motion[1] double 0.01 run data get entity @s Motion[1] 100
execute store result storage minecraft:animation TempFrame.TempEntity.Motion[2] double 0.01 run data get entity @s Motion[2] 100
execute store result storage minecraft:animation TempFrame.TempEntity.Pos[0] double 0.01 run data get entity @s Pos[0] 100
execute store result storage minecraft:animation TempFrame.TempEntity.Pos[1] double 0.01 run data get entity @s Pos[1] 100
execute store result storage minecraft:animation TempFrame.TempEntity.Pos[2] double 0.01 run data get entity @s Pos[2] 100
execute store result storage minecraft:animation TempFrame.TempEntity.Rot[0] float 0.01 run data get entity @s Rotation[0] 100
execute store result storage minecraft:animation TempFrame.TempEntity.Rot[1] float 0.01 run data get entity @s Rotation[1] 100

execute if entity @s[type=item] run data modify storage minecraft:animation TempFrame.TempEntity.Item set from entity @s Item
execute if entity @s[type=potion] run data modify storage minecraft:animation TempFrame.TempEntity.Item set from entity @s Item

#Set entity type
execute if entity @s[type=item] run data modify storage minecraft:animation TempFrame.TempEntity.Type set value 1
execute if entity @s[type=tnt] run data modify storage minecraft:animation TempFrame.TempEntity.Type set value 2
execute if entity @s[type=boat] run data modify storage minecraft:animation TempFrame.TempEntity.Type set value 3
execute if entity @s[type=minecart] run data modify storage minecraft:animation TempFrame.TempEntity.Type set value 4
execute if entity @s[type=chest_minecart] run data modify storage minecraft:animation TempFrame.TempEntity.Type set value 5
execute if entity @s[type=command_block_minecart] run data modify storage minecraft:animation TempFrame.TempEntity.Type set value 6
execute if entity @s[type=furnace_minecart] run data modify storage minecraft:animation TempFrame.TempEntity.Type set value 7
execute if entity @s[type=hopper_minecart] run data modify storage minecraft:animation TempFrame.TempEntity.Type set value 8
execute if entity @s[type=spawner_minecart] run data modify storage minecraft:animation TempFrame.TempEntity.Type set value 9
execute if entity @s[type=tnt_minecart] run data modify storage minecraft:animation TempFrame.TempEntity.Type set value 10
execute if entity @s[type=snowball] run data modify storage minecraft:animation TempFrame.TempEntity.Type set value 11
execute if entity @s[type=egg] run data modify storage minecraft:animation TempFrame.TempEntity.Type set value 12
execute if entity @s[type=end_crystal] run data modify storage minecraft:animation TempFrame.TempEntity.Type set value 13
execute if entity @s[type=ender_pearl] run data modify storage minecraft:animation TempFrame.TempEntity.Type set value 14
execute if entity @s[type=experience_bottle] run data modify storage minecraft:animation TempFrame.TempEntity.Type set value 15
execute if entity @s[type=eye_of_ender] run data modify storage minecraft:animation TempFrame.TempEntity.Type set value 16
execute if entity @s[type=firework_rocket] run data modify storage minecraft:animation TempFrame.TempEntity.Type set value 17
execute if entity @s[type=item_frame] run data modify storage minecraft:animation TempFrame.TempEntity.Type set value 18
execute if entity @s[type=potion] run data modify storage minecraft:animation TempFrame.TempEntity.Type set value 19
execute if entity @s[type=trident] run data modify storage minecraft:animation TempFrame.TempEntity.Type set value 20
execute if entity @s[type=arrow] run data modify storage minecraft:animation TempFrame.TempEntity.Type set value 21
execute if entity @s[type=spectral_arrow] run data modify storage minecraft:animation TempFrame.TempEntity.Type set value 22
execute if entity @s[type=chest_boat] run data modify storage minecraft:animation TempFrame.TempEntity.Type set value 23

data modify storage minecraft:animation TempFrame.Entity append from storage minecraft:animation TempFrame.TempEntity