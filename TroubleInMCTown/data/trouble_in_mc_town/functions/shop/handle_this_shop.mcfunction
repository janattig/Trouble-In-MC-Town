# check if there is a player which currently needs shop (= shop active)
tag @s remove shop_active

# find corresponding player
tag @a remove shop_player
execute as @a[tag=has_shop] run execute if score @s ttt_shop = @e[tag=ttt_traitor_shop_home, limit=1, sort=nearest] ttt_shop run tag @s add shop_player
# find corresponding villager
tag @e remove shop_shop
execute as @e[tag=ttt_shop] run execute if score @s ttt_shop = @e[tag=ttt_traitor_shop_home, limit=1, sort=nearest] ttt_shop run tag @s add shop_shop

# give warnings if something is missing
#execute unless entity @e[tag=shop_player] run say Player is missing!
#execute unless entity @e[tag=shop_shop] run say Shop is missing!


# add the active tag, if the selected item of the player is a traitor shop
execute if entity @a[tag=has_shop, tag=shop_player, nbt={SelectedItem:{tag:{traitor_shop:1b}}}] run tag @s add shop_active

# if shop is inactive, teleport the villager back to the home
execute as @s[tag=!shop_active] run tp @e[tag=shop_shop] @s
# if shop is active, teleport the villager to the player
execute as @s[tag=shop_active] run execute as @p[tag=shop_player] at @s run function trouble_in_mc_town:shop/teleport_shop_to_self


# remove tags again
tag @a remove shop_player
tag @e remove shop_shop