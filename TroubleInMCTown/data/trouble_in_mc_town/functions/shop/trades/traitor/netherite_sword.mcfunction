# add slot for the trade
function trouble_in_mc_town:shop/add_new_recipe_slot

# set the trade
item replace entity @s villager.0 with emerald 12
data modify entity @s Offers.Recipes[0].buy set from entity @s Inventory[0]
item replace entity @s villager.0 with netherite_ingot 1
data modify entity @s Offers.Recipes[0].buyB set from entity @s Inventory[0]

item replace entity @s villager.0 with netherite_sword{Enchantments:[{id:"minecraft:sharpness",lvl:5s},{id:"minecraft:fire_aspect",lvl:2s},{id:"minecraft:knockback",lvl:2s},{id:"minecraft:sweeping",lvl:2s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]} 1
item modify entity @s villager.0 trouble_in_mc_town:designate_traitor_item
data modify entity @s Offers.Recipes[0].sell set from entity @s Inventory[0]
data modify entity @s Offers.Recipes[0].sell.tag.Damage set value 2000

# limit number of uses
data modify entity @s Offers.Recipes[0].maxUses set value 1b