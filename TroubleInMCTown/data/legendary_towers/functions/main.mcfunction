# deploy items on ground as towers
execute as @e[type=item, nbt={Item:{tag:{legendary_tower:1b}}, OnGround:1b}] at @s run function legendary_towers:deploy_this_tower


# update all tower decorations
execute as @e[tag=lt_decoration] at @s run function legendary_towers:tower_decorations/update_tower_decoration

# update all towers
function legendary_towers:update_all_towers