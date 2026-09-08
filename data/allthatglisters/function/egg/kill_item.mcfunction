summon item ~ ~ ~ {Item:{id:"minecraft:stick",count:1},PickupDelay:10,Tags:["allthatglisters.item"]}
execute on passengers if entity @s[type=item_display] run data modify entity @n[type=item,tag=allthatglisters.item,distance=..5] Item set from entity @s item

tp @s[type=sulfur_cube] ~ -64 ~
execute on passengers run kill @s
kill @s[type=sulfur_cube]