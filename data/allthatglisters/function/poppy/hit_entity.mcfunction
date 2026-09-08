execute store result score .age allthatglisters run data get entity @s Age
execute unless score .age allthatglisters matches 1.. run return fail
data modify entity @s Age set value 0
scoreboard players set .rc_success allthatglisters 1
particle minecraft:trial_spawner_detection ~ ~ ~ .25 .25 .25 0 10
playsound minecraft:item.golden_dandelion.use neutral @a ~ ~12 ~ 1 .1