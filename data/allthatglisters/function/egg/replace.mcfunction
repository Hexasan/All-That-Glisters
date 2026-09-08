summon sulfur_cube ~ ~ ~ {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,Tags:["allthatglisters.egg","allthatglisters.temp"],Passengers:[{id:"minecraft:item_display",billboard:"center",Tags:["allthatglisters.egg_display","allthatglisters.temp.egg_display"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]}},{id:"minecraft:interaction",response:1b,height:.5,width:1,Tags:["allthatglisters.egg_interaction"],response:1b},{id:"minecraft:interaction",response:1b,height:-.5,width:1,Tags:["allthatglisters.egg_interaction"],response:1b}],equipment:{body:{id:"minecraft:stick",count:1}},active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:-1,show_particles:0b,show_icon:0b,ambient:0b}],attributes:[{id:"minecraft:scale",base:0.01},{id:"minecraft:bounciness",base:.9},{id:"minecraft:air_drag_modifier",base:0.1}]}

data modify entity @n[type=sulfur_cube,tag=allthatglisters.temp,distance=..5] Motion set from entity @s Motion
tag @n[type=sulfur_cube,tag=allthatglisters.temp,distance=..5] remove allthatglisters.temp

data modify entity @n[type=item_display,tag=allthatglisters.temp.egg_display,distance=..5] item set from entity @s Item
tag @n[type=item_display,tag=allthatglisters.temp.egg_display,distance=..5] remove allthatglisters.temp.egg_display

kill @s