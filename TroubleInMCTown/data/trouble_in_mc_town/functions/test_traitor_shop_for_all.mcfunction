# remove all old traitor shops
function trouble_in_mc_town:shop/remove_all_shops
# remove traitor shop items from inventory
clear @a book{traitor_shop:1b}
clear @a emerald


# init a traitor shop for everybody
execute as @a at @s run function trouble_in_mc_town:shop/init_traitor_shop_for_self
execute as @a at @s run loot give @s loot trouble_in_mc_town:traitor_shop
# give starting money
execute as @a at @s run loot give @s loot trouble_in_mc_town:traitor_currency/test_currency

# start traitor shop logic in the next tick
schedule function trouble_in_mc_town:shop/init_shop_homes 1t