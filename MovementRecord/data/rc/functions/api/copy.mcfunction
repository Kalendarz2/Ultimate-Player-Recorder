#Check id
function rc:id/check/check

#No id
execute if score $id rc_id matches 1.. if score $id_out rc_id matches 0 run function rc:internal_api/messages/no_animation
execute unless score $id rc_id matches 1.. run function rc:internal_api/messages/positive_id

#Id
execute if score $id_out rc_id matches 1 run function rc:clipboard/save
execute if score $id_out rc_id matches 1 run tellraw @a[tag=rc_debug] ["",{"text":"<RC Debug> ","color":"dark_green","bold":true},{"text":"Animation with id ","color":"gray"},{"score":{"name":"$id","objective":"rc_id"}},{"text":" has been saved to the clipboard.","color":"gray"}]
execute if score $id_out rc_id matches 1 run data remove storage minecraft:animation GetAnimation