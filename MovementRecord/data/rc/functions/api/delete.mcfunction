function rc:id/check/check
scoreboard players add $id rc_id 0

#No id
execute if score $id rc_id matches 0.. if score $id_out rc_id matches 0 run tellraw @a[tag=rc_debug] ["",{"text":"<RC Debug> ","color":"dark_green","bold":true},{"text":"There is no animation with id ","color":"dark_red"},{"score":{"name":"$id","objective":"rc_id"},"color":"dark_red"}]

#All
scoreboard players set $temp rc_id 1
execute if score $id rc_id matches ..-1 if score $id_out rc_id matches 0 run function rc:delete/confirm_all
execute if score $id rc_id matches ..-1 if score $id_out rc_id matches 0 run tellraw @a[tag=rc_debug] ["",{"text":"<RC Debug> ","color":"dark_green","bold":true},{"text":"All animations have been deleted.","color":"gray"}]

#Id
execute if score $id_out rc_id matches 1 run function rc:delete/confirm
execute if score $id_out rc_id matches 1 run tellraw @a[tag=rc_debug] ["",{"text":"<RC Debug> ","color":"dark_green","bold":true},{"text":"Animation with id ","color":"gray"},{"score":{"name":"$id","objective":"rc_id"}},{"text":" has been deleted.","color":"gray"}]
scoreboard players set $temp rc_id 0