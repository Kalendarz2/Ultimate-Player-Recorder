#Manual
execute unless score $id rc_id matches 1 run function rc:id/check/check_extended
execute unless score $id rc_id matches 1 if score $id_out rc_id matches 1 run function rc:internal_api/messages/occupied_slot

#Auto
execute if score $id rc_id matches 1 run function rc:id/check/all

execute if score $id_out rc_id matches 0 run function rc:clipboard/success
execute if score $id_out rc_id matches 0 run tellraw @a[tag=rc_debug] ["",{"text":"<RC Debug> ","color":"dark_green","bold":true},{"text":"Animation with id ","color":"gray"},{"score":{"name":"$id","objective":"rc_id"}},{"text":" has been successfully pasted.","color":"gray"}]
execute if score $id_out rc_id matches 0 run scoreboard players operation $id_out rc_id = $id rc_id