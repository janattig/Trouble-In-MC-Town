# execute the resolve function as a single head (can have multiple at once)
execute as @e[type=item, nbt={Item:{id:"minecraft:player_head", tag:{needs_resolving:1b}}}, limit=1] at @s run function trouble_in_mc_town:utility/resolve_player_kill_as_head

# maybe queue again
execute if entity @e[type=item, nbt={Item:{id:"minecraft:player_head", tag:{needs_resolving:1b}}}] run function trouble_in_mc_town:utility/resolve_player_kills