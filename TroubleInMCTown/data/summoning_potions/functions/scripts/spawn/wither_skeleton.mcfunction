# additional particle and sound effects
particle minecraft:explosion ~ ~ ~

# summon one wither skeleton
summon wither_skeleton ~ ~ ~ {PersistenceRequired:1,HandItems:[{id:iron_sword,Count:1},{id:iron_sword,Count:1}],ArmorItems:[{id:netherite_boots,Count:1},{id:netherite_leggings,Count:1},{id:netherite_chestplate,Count:1},{id:netherite_helmet,Count:1}],HandDropChances:[0F,0F],ArmorDropChances:[0F,0F,0F,0F], Tags:["sp_summoned"]}

# make angry at nearest player
execute as @e[type=wither_skeleton, sort=nearest, limit=1] at @s run function summoning_potions:scripts/try_make_self_angry_at_nearest_player
