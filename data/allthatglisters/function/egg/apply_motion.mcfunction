execute on passengers run data remove entity @s attack
execute store result score .x allthatglisters run data get entity @s Pos[0] 1000
execute store result score .y allthatglisters run data get entity @s Pos[1] 1000
execute store result score .z allthatglisters run data get entity @s Pos[2] 1000

summon marker ^ ^ ^.1 {Tags:["allthatglisters.calc"]}

execute store result score .x_2 allthatglisters run data get entity @n[type=marker,tag=allthatglisters.calc,distance=..1] Pos[0] 1000
execute store result score .y_2 allthatglisters run data get entity @n[type=marker,tag=allthatglisters.calc,distance=..1] Pos[1] 1000
execute store result score .z_2 allthatglisters run data get entity @n[type=marker,tag=allthatglisters.calc,distance=..1] Pos[2] 1000

kill @n[type=marker,tag=allthatglisters.calc,distance=..1]

execute store result entity @s Motion[0] double .01 run scoreboard players operation .x_2 allthatglisters -= .x allthatglisters
execute store result entity @s Motion[1] double .01 run scoreboard players operation .y_2 allthatglisters -= .y allthatglisters
execute store result entity @s Motion[2] double .01 run scoreboard players operation .z_2 allthatglisters -= .z allthatglisters