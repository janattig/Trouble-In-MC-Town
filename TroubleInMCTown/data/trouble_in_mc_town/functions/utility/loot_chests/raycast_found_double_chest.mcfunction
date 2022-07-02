# for a double chest, spawn a marker, but only put loot if the other half does not have a marker

# summon armor stand to indicate the loot chest
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1, Tags:["ttt_lootchest"], NoBasePlate:1, Small:1, NoHitBox:1, Marker:1b, Invisible:1}
# maybe make it a traitor loot chest
execute as @s[tag=ttt_traitor] run tag @e[limit=1,tag=ttt_lootchest,sort=nearest] add ttt_traitor


# only make it self deploy if the other half does not contain a loot marker
execute unless entity @e[tag=ttt_lootchest,distance=0.1..1.1] run execute as @e[limit=1,tag=ttt_lootchest,sort=nearest] at @s run function trouble_in_mc_town:utility/loot_chests/as_self_deploy_rich
