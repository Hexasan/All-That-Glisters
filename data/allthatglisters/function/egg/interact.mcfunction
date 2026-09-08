advancement revoke @s only allthatglisters:interact
tag @n[type=interaction,tag=allthatglisters.egg_interaction,distance=..16,nbt={interaction:{}}] add allthatglisters.temp.interaction
execute as @n[type=interaction,tag=allthatglisters.temp.interaction,distance=..16] on vehicle on passengers run tag @s[type=item_display] add allthatglisters.temp.display

function allthatglisters:egg/take

execute as @n[type=interaction,tag=allthatglisters.temp.interaction,distance=..16] on vehicle positioned as @s run function allthatglisters:egg/kill
