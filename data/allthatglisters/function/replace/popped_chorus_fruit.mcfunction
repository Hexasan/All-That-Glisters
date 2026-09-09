advancement revoke @s only allthatglisters:replace/popped_chorus_fruit

execute if entity @s[gamemode=creative] if items entity @s hotbar.0 popped_chorus_fruit[break_sound="entity.item.break"] run return fail

execute store result score #count allthatglisters run clear @s popped_chorus_fruit[break_sound="entity.item.break"]

execute store result storage allthatglisters:storage count int 1 run scoreboard players get #count allthatglisters
function allthatglisters:replace/popped_chorus_fruit_macro with storage allthatglisters:storage