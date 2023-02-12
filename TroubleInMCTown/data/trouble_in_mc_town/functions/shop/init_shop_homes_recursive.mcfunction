# recursively called for all shops which do not have a villager yet
# called as a random shop marker at @s

# summon a villager
function trouble_in_mc_town:shop/summon_villager_shop_here
# set the scoreboard value of the villager
scoreboard players operation @e[tag=ttt_shop, limit=1, sort=nearest] ttt_shop = @s ttt_shop

# add the tag that the current shop has a villager
tag @s add has_villager


# maybe requeue
execute as @e[tag=ttt_traitor_shop_home, tag=!has_villager, limit=1] at @s run function trouble_in_mc_town:shop/init_shop_homes_recursive