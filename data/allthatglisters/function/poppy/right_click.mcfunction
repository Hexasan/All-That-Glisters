advancement revoke @s only allthatglisters:use_golden_poppy

execute store result score .rc_range allthatglisters run attribute @s entity_interaction_range get 10
scoreboard players reset .rc_step allthatglisters
scoreboard players reset .rc_success allthatglisters
execute anchored eyes run function allthatglisters:poppy/raycast
execute unless score .rc_success allthatglisters matches 1 run return fail
advancement grant @s only allthatglisters:non_technical/use_golden_cornflower
execute if entity @s[gamemode=creative] run return fail
execute if predicate allthatglisters:mainhand_poppy run return run item modify entity @s weapon.mainhand allthatglisters:remove_one
item modify entity @s weapon.offhand allthatglisters:remove_one