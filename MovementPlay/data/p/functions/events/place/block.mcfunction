#Summon block
setblock 12587360 1 12587360 air
execute unless entity @e[tag=p_place_main_marker] run summon marker 12587360 1 12587362 {Tags:["p_place_main_marker"]}

function p:events/place/loop