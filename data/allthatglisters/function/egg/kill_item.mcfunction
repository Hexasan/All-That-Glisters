summon item ~ ~ ~ {Item:{id:"minecraft:stick",count:1},PickupDelay:10,Tags:["allthatglisters.item","allthatglisters.temp.item"]}
execute on passengers if entity @s[type=item_display] run item replace entity @n[type=item,tag=allthatglisters.temp.item,distance=..5] container.0 from entity @s container.0
tag @n[type=item,tag=allthatglisters.temp.item,distance=..5] remove allthatglisters.temp.item

tp @s[type=sulfur_cube] ~ -64 ~
execute on passengers run kill @s
kill @s[type=sulfur_cube]