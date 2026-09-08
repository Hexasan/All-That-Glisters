advancement revoke @s only allthatglisters:glistering_melon

# Don't run if already ran this tick
execute store result score .temp allthatglisters.melon run time query gametime
execute if score @s allthatglisters.melon = .temp allthatglisters.melon run return run scoreboard players operation @s allthatglisters.melon = .temp allthatglisters.melon
scoreboard players operation @s allthatglisters.melon = .temp allthatglisters.melon

item modify entity @s {type:"minecraft:filtered",slot_source:[{type:"minecraft:slot_range",slots:"inventory.*"},{type:"minecraft:slot_range",slots:"hotbar.*"}],item_filter:{items:"minecraft:glistering_melon_slice"}} allthatglisters:glistering_melon
