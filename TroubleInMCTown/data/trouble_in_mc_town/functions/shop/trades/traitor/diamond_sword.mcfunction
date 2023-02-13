# add slot for the trade
function trouble_in_mc_town:shop/add_new_recipe_slot

# set the trade
loot replace entity @s villager.0 loot trouble_in_mc_town:traitor_currency/emerald
data modify entity @s Offers.Recipes[0].buy set from entity @s Inventory[0]
data modify entity @s Offers.Recipes[0].buy.Count set value 12b

loot replace entity @s villager.0 loot trouble_in_mc_town:traitor_currency/diamond
data modify entity @s Offers.Recipes[0].buyB set from entity @s Inventory[0]
data modify entity @s Offers.Recipes[0].buyB.Count set value 1b

item replace entity @s villager.0 with diamond_sword{Enchantments:[{id:"minecraft:sharpness",lvl:4s},{id:"minecraft:knockback",lvl:1s},{id:"minecraft:looting",lvl:2s},{id:"minecraft:sweeping",lvl:1s},{id:"minecraft:unbreaking",lvl:1s},{id:"minecraft:vanishing_curse",lvl:1s}]} 1
item modify entity @s villager.0 trouble_in_mc_town:designate_traitor_item
data modify entity @s Offers.Recipes[0].sell set from entity @s Inventory[0]
data modify entity @s Offers.Recipes[0].sell.tag.Damage set value 1550

# limit number of uses
data modify entity @s Offers.Recipes[0].maxUses set value 1b