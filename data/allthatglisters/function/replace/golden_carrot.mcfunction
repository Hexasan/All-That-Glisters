advancement revoke @s only allthatglisters:golden_carrot

# Don't run if already ran this tick
execute store result score .temp allthatglisters.carrot run time query gametime
execute if score @s allthatglisters.carrot = .temp allthatglisters.carrot run return run scoreboard players operation @s allthatglisters.carrot = .temp allthatglisters.carrot
scoreboard players operation @s allthatglisters.carrot = .temp allthatglisters.carrot

item modify entity @s {type:"minecraft:filtered",slot_source:[{type:"minecraft:slot_range",slots:"inventory.*"},{type:"minecraft:slot_range",slots:"hotbar.*"}],item_filter:{items:"minecraft:golden_carrot"}} allthatglisters:golden_carrot
