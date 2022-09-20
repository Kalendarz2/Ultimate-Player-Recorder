execute if block 12587360 1 12587360 #minecraft:wooden_doors[open=true] run playsound minecraft:block.wooden_door.open block @a
execute if block 12587360 1 12587360 #minecraft:wooden_doors[open=false] run playsound minecraft:block.wooden_door.close block @a
execute if block 12587360 1 12587360 #minecraft:wooden_trapdoors[open=true] run playsound minecraft:block.wooden_trapdoor.open block @a
execute if block 12587360 1 12587360 #minecraft:wooden_trapdoors[open=false] run playsound minecraft:block.wooden_trapdoor.close block @a

execute if block 12587360 1 12587360 minecraft:iron_door[open=true] run playsound minecraft:block.iron_door.open block @a
execute if block 12587360 1 12587360 minecraft:iron_door[open=false] run playsound minecraft:block.iron_door.close block @a
execute if block 12587360 1 12587360 minecraft:iron_trapdoor[open=true] run playsound minecraft:block.iron_trapdoor.open block @a
execute if block 12587360 1 12587360 minecraft:iron_trapdoor[open=false] run playsound minecraft:block.iron_trapdoor.close block @a

execute if block 12587360 1 12587360 #minecraft:fence_gates[open=true] run playsound minecraft:block.fence_gate.open block @a
execute if block 12587360 1 12587360 #minecraft:fence_gates[open=false] run playsound minecraft:block.fence_gate.close block @a

#blackstone + stone button
execute if block 12587360 1 12587360 #p:buttons[powered=true] run playsound minecraft:block.lever.click block @a ~ ~ ~ 0.5 0.6
execute if block 12587360 1 12587360 #p:buttons[powered=false] run playsound minecraft:block.lever.click block @a ~ ~ ~ 0.5 0.5

execute if block 12587360 1 12587360 #minecraft:wooden_buttons[powered=true] run playsound minecraft:block.wooden_button.click_on block @a ~ ~ ~ 0.5 0.6
execute if block 12587360 1 12587360 #minecraft:wooden_buttons[powered=false] run playsound minecraft:block.wooden_button.click_off block @a ~ ~ ~ 0.5 0.5