#Detect summoned
scoreboard players add @e[type=#rc:summonable,distance=..10] rc_time 1
scoreboard players set @e[distance=..5,nbt={Item:{tag:{Carrot:1}}}] rc_time 0
tag @e[type=#rc:summonable,distance=..5,scores={rc_time=1}] add rc_summoned

execute as @e[tag=rc_summoned] run function rc:record/entity/data
tag @e remove rc_summoned