# deploy a tower based on a dropped item
execute as @s[nbt={Item:{tag:{arrow_tower:1b}}}] at @s run function legendary_towers:tower_deploy/arrow_tower
execute as @s[nbt={Item:{tag:{fireball_tower:1b}}}] at @s run function legendary_towers:tower_deploy/fireball_tower

# kill the item
kill @s