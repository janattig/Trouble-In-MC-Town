# remove the damage from the arrow
data merge entity @s {damage:0.1d}

# add a tag that the arrow damage has been removed from the arrow
tag @s add arrow_damage_removed
