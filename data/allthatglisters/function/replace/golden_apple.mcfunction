advancement revoke @s only allthatglisters:golden_apple

# Don't run if already ran this tick
execute store result score .temp allthatglisters.apple run time query gametime
execute if score @s allthatglisters.apple = .temp allthatglisters.apple run return run scoreboard players operation @s allthatglisters.apple = .temp allthatglisters.apple
scoreboard players operation @s allthatglisters.apple = .temp allthatglisters.apple

item modify entity @s {type:"minecraft:filtered",slot_source:[{type:"minecraft:slot_range",slots:"inventory.*"},{type:"minecraft:slot_range",slots:"hotbar.*"},{type:"minecraft:slot_range",slots:"player.cursor"}],item_filter:{items:"minecraft:golden_apple",components:{rarity:"common"}}} allthatglisters:uncommon
