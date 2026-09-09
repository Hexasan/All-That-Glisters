execute if predicate allthatglisters:mainhand_empty run playsound entity.item.pickup player @a ~ ~ ~ .1 1.5
execute if predicate allthatglisters:mainhand_empty run return run item replace entity @s weapon.mainhand from entity @n[type=item_display,tag=allthatglisters.temp.display,distance=..16] container.0
 
summon item ~ ~ ~ {Item:{id:"egg",count:1,components:{item_name:{fallback:"Golden Egg",translate:"allthatglisters.golden_egg"},item_model:"allthatglisters:golden_egg",rarity:"uncommon",custom_data:{"allthatglisters:golden_egg":true},use_cooldown:{seconds:1,cooldown_group:"allthatglisters:golden_egg"}}},Tags:["allthatglisters.item","allthatglisters.temp.item"]}

item replace entity @n[type=item,tag=allthatglisters.temp.item,distance=..16] container.0 from entity @n[type=item_display,tag=allthatglisters.temp.display,distance=..16] container.0
tag @n[type=item,tag=allthatglisters.temp.item,distance=..16] remove allthatglisters.temp.item