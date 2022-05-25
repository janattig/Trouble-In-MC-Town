# particles and explosion
particle minecraft:explosion ~ ~ ~

# check which mob to spawn
execute if entity @s[tag=sp_wither_skeleton] align xyz run execute positioned ~0.5 ~0.5 ~0.5 run function summoning_potions:scripts/spawn/wither_skeleton
execute if entity @s[tag=sp_creeper] align xyz run execute positioned ~0.5 ~0.5 ~0.5 run function summoning_potions:scripts/spawn/creeper
execute if entity @s[tag=sp_zombie] align xyz run execute positioned ~0.5 ~0.5 ~0.5 run function summoning_potions:scripts/spawn/zombie
execute if entity @s[tag=sp_slime] align xyz run execute positioned ~0.5 ~0.5 ~0.5 run function summoning_potions:scripts/spawn/slime
execute if entity @s[tag=sp_spider] align xyz run execute positioned ~0.5 ~0.5 ~0.5 run function summoning_potions:scripts/spawn/spider
execute if entity @s[tag=sp_blaze] align xyz run execute positioned ~0.5 ~0.5 ~0.5 run function summoning_potions:scripts/spawn/blaze
execute if entity @s[tag=sp_enderman] align xyz run execute positioned ~0.5 ~0.5 ~0.5 run function summoning_potions:scripts/spawn/enderman
execute if entity @s[tag=sp_skeleton] align xyz run execute positioned ~0.5 ~0.5 ~0.5 run function summoning_potions:scripts/spawn/skeleton
execute if entity @s[tag=sp_shulker] align xyz run execute positioned ~0.5 ~0.5 ~0.5 run function summoning_potions:scripts/spawn/shulker
execute if entity @s[tag=sp_silverfish] align xyz run execute positioned ~0.5 ~0.5 ~0.5 run function summoning_potions:scripts/spawn/silverfish
execute if entity @s[tag=sp_phantom] align xyz run execute positioned ~0.5 ~0.5 ~0.5 run function summoning_potions:scripts/spawn/phantom


# kill the splash potion
kill @s
