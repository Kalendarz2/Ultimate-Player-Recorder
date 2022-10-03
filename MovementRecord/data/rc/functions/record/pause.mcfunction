item replace entity @s weapon.mainhand with carrot_on_a_stick{display:{Name:'{"text":"Resume Recording","color":"green","italic":false}'},ResumeRecording:1,Carrot:1,Enchantments:[{id:"asd"}]}
data modify storage minecraft:animation TempAnimation.Manual set value 1
playsound minecraft:entity.player.attack.sweep master @s ~ ~ ~ 1 0.5
scoreboard players set @s rc_click 0