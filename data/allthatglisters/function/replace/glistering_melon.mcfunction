advancement revoke @s only allthatglisters:replace/glistering_melon

execute if entity @s[gamemode=creative] if items entity @s hotbar.0 glistering_melon_slice[rarity="common"] run return fail

execute store result score #count allthatglisters run clear @s glistering_melon_slice[rarity="common"]

execute store result storage allthatglisters:storage count int 1 run scoreboard players get #count allthatglisters
function allthatglisters:replace/glistering_melon_macro with storage allthatglisters:storage