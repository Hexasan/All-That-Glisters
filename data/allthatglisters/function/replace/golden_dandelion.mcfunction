advancement revoke @s only allthatglisters:golden_dandelion

# Don't run if already ran this tick
execute store result score .temp allthatglisters.dandelion run time query gametime
execute if score @s allthatglisters.dandelion = .temp allthatglisters.dandelion run return run scoreboard players operation @s allthatglisters.dandelion = .temp allthatglisters.dandelion
scoreboard players operation @s allthatglisters.dandelion = .temp allthatglisters.dandelion

item modify entity @s {type:"minecraft:filtered",slot_source:[{type:"minecraft:slot_range",slots:"inventory.*"},{type:"minecraft:slot_range",slots:"hotbar.*"}],item_filter:{items:"minecraft:golden_dandelion"}} allthatglisters:golden_dandelion
