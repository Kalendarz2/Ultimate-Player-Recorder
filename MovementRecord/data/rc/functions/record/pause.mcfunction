#Toggle
item replace entity @s weapon.mainhand with carrot_on_a_stick{display:{Name:'{"text":"Resume Recording","color":"green","italic":false}'},ResumeRecording:1,Carrot:1,Enchantments:[{id:"asd"}]}
data modify storage minecraft:animation TempAnimation.Manual set value 1
execute at @s run playsound minecraft:entity.player.attack.sweep master @s ~ ~ ~ 1 0.5
scoreboard players set @s rc_click 0

#Save TempAnimation
data modify entity @e[tag=this_rc_data,limit=1] data.Info set from storage minecraft:animation TempAnimation