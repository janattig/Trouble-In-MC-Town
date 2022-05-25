# additional particle and sound effects
particle minecraft:explosion ~ ~ ~

# summon some small skeleton army
summon minecraft:skeleton_horse ~ ~ ~ {SaddleItem:{id:saddle,Count:1},Tame:0,Passengers:[{id:skeleton,PersistenceRequired:1,HandItems:[{id:bow,Count:1}],ArmorItems:[{id:chainmail_boots,Count:1},{id:chainmail_leggings,Count:1},{id:chainmail_chestplate,Count:1},{id:chainmail_helmet,Count:1}],HandDropChances:[0F],ArmorDropChances:[0F,0F,0F,0F], Tags:["sp_summoned"]}], Tags:["sp_summoned"]}
summon minecraft:skeleton ~0.5 ~ ~ {PersistenceRequired:1,HandItems:[{id:bow,Count:1}],ArmorItems:[{},{},{},{id:chainmail_helmet,Count:1}],HandDropChances:[0F],ArmorDropChances:[0F,0F,0F,0F], Tags:["sp_summoned"]}
summon minecraft:skeleton ~-0.5 ~ ~ {PersistenceRequired:1,HandItems:[{id:bow,Count:1}],ArmorItems:[{},{},{},{id:chainmail_helmet,Count:1}],HandDropChances:[0F],ArmorDropChances:[0F,0F,0F,0F], Tags:["sp_summoned"]}
summon minecraft:skeleton ~ ~ ~0.5 {PersistenceRequired:1,HandItems:[{id:iron_sword,Count:1}],ArmorItems:[{},{},{},{id:chainmail_helmet,Count:1}],HandDropChances:[0F],ArmorDropChances:[0F,0F,0F,0F], Tags:["sp_summoned"]}
summon minecraft:skeleton ~ ~ ~-0.5 {PersistenceRequired:1,HandItems:[{id:iron_sword,Count:1}],ArmorItems:[{},{},{},{id:chainmail_helmet,Count:1}],HandDropChances:[0F],ArmorDropChances:[0F,0F,0F,0F], Tags:["sp_summoned"]}

# make angry at nearest player
execute as @e[type=skeleton, sort=nearest, distance=..2] at @s run function summoning_potions:scripts/try_make_self_angry_at_nearest_player
