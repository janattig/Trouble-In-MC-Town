# test all flying snowballs if they are initialized
execute as @e[type=snowball, nbt={Item:{tag:{ultimate_snowball:1b}}}, tag=!usb_initialized] at @s run function ultimate_snowballs:scripts/init_snowball

# test all aoe clouds if they are still riding, if not: potion landed = spawn event
execute as @e[type=area_effect_cloud, tag=ultimate_snowball_companion] unless predicate ultimate_snowballs:is_riding_snowball at @s run function ultimate_snowballs:scripts/found_snowball_landing


# visuals for all snowballs
execute as @e[type=snowball,tag=ultimate_snowball] at @s run function ultimate_snowballs:scripts/visual_snowball