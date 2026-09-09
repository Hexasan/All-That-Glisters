advancement revoke @s only allthatglisters:replace/golden_carrot

execute if entity @s[gamemode=creative] if items entity @s hotbar.0 golden_carrot[rarity="common"] run return fail

execute store result score #count allthatglisters run clear @s golden_carrot[rarity="common"]

execute store result storage allthatglisters:storage count int 1 run scoreboard players get #count allthatglisters
function allthatglisters:replace/golden_carrot_macro with storage allthatglisters:storage