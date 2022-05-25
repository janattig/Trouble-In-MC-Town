# for a single chest, just go on as normal

# summon armor stand to indicate the loot chest
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1, Tags:["ttt_lootchest"], NoBasePlate:1, Small:1, NoHitBox:1, Marker:1b, Invisible:1}
# maybe make it a traitor loot chest
execute as @s[tag=ttt_traitor] run tag @e[limit=1,tag=ttt_lootchest,sort=nearest] add ttt_traitor


# make it self deploy
execute as @e[limit=1,tag=ttt_lootchest,sort=nearest] at @s run function trouble_in_mc_town:utility/loot_chests/as_self_deploy
