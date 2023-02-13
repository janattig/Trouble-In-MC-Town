# add slot for the trade
function trouble_in_mc_town:shop/add_new_recipe_slot

# set the trade
loot replace entity @s villager.0 loot trouble_in_mc_town:traitor_currency/emerald
data modify entity @s Offers.Recipes[0].buy set from entity @s Inventory[0]
data modify entity @s Offers.Recipes[0].buy.Count set value 8b

loot replace entity @s villager.0 loot trouble_in_mc_town:traitor_currency/diamond
data modify entity @s Offers.Recipes[0].buyB set from entity @s Inventory[0]
data modify entity @s Offers.Recipes[0].buyB.Count set value 1b

loot replace entity @s villager.0 loot trouble_in_mc_town:traitor_currency/netherite
data modify entity @s Offers.Recipes[0].sell set from entity @s Inventory[0]
data modify entity @s Offers.Recipes[0].sell.Count set value 1b
