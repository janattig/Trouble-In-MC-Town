# add slot for the trade
function trouble_in_mc_town:shop/add_new_recipe_slot

# set the trade
item replace entity @s villager.0 with emerald 2
data modify entity @s Offers.Recipes[0].buy set from entity @s Inventory[0]

loot replace entity @s villager.0 loot summoning_potions:p_creeper
item modify entity @s villager.0 trouble_in_mc_town:designate_traitor_item
data modify entity @s Offers.Recipes[0].sell set from entity @s Inventory[0]

# limit number of uses
data modify entity @s Offers.Recipes[0].maxUses set value 4b