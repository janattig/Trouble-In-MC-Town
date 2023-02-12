# handle this shop
function trouble_in_mc_town:shop/handle_this_shop

# remove the update required tag
tag @s remove update_required

# handle rest of the shops recursively
execute as @e[tag=ttt_traitor_shop_home, tag=update_required, limit=1] at @s run function trouble_in_mc_town:shop/handle_shops_recursively
