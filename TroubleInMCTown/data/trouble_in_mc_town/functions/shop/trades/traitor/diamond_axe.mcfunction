# add slot for the trade
function trouble_in_mc_town:shop/add_new_recipe_slot

# set the trade
item replace entity @s villager.0 with emerald 10
data modify entity @s Offers.Recipes[0].buy set from entity @s Inventory[0]
item replace entity @s villager.0 with diamond 1
data modify entity @s Offers.Recipes[0].buyB set from entity @s Inventory[0]

item replace entity @s villager.0 with diamond_axe{Enchantments:[{id:"minecraft:sharpness",lvl:4s},{id:"minecraft:efficiency",lvl:2s},{id:"minecraft:unbreaking",lvl:1s},{id:"minecraft:vanishing_curse",lvl:1s}]} 1
item modify entity @s villager.0 trouble_in_mc_town:designate_traitor_item
data modify entity @s Offers.Recipes[0].sell set from entity @s Inventory[0]
data modify entity @s Offers.Recipes[0].sell.tag.Damage set value 1550

# limit number of uses
data modify entity @s Offers.Recipes[0].maxUses set value 1b