# tag all shops as not handled yet
tag @e[tag=ttt_traitor_shop_home] add update_required

# handle shops recursively
execute as @e[tag=ttt_traitor_shop_home, tag=update_required, limit=1] at @s run function trouble_in_mc_town:shop/handle_shops_recursively

# remove all tags
tag @e[tag=ttt_traitor_shop_home] remove update_required