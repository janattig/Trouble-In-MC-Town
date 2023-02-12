# add slot for the trade
function trouble_in_mc_town:shop/add_new_recipe_slot

# set the trade
item replace entity @s villager.0 with emerald 8
data modify entity @s Offers.Recipes[0].buy set from entity @s Inventory[0]
item replace entity @s villager.0 with diamond 1
data modify entity @s Offers.Recipes[0].buyB set from entity @s Inventory[0]

item replace entity @s villager.0 with netherite_ingot 1
data modify entity @s Offers.Recipes[0].sell set from entity @s Inventory[0]
