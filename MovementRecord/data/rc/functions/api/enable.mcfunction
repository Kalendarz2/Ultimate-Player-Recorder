execute as @a[tag=in_editor] run function rc:editor/close/close
data modify storage minecraft:animation APIMode set value 1
function rc:disable_triggers
tellraw @s ["",{"text":"You have enabled the API mode. Trigger commands are no longer available. You can disable this mode by using /function rc:api/disable","color":"yellow"}]