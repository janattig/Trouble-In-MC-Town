# remove old shop
kill @e[type=villager, tag=ttt_shop, distance=..3]

# summon new shop
summon villager ~ ~ ~ {NoGravity:0b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Willing:0b,Tags:["ttt_shop"],CustomName:'{"text":"Shop","bold":true}',ActiveEffects:[{Id:14,Amplifier:1b,Duration:2,ShowParticles:0b}],VillagerData:{level:99,profession:"minecraft:librarian",type:"minecraft:savanna"}}

# set the trades
execute as @e[tag=ttt_shop, limit=1, sort=nearest] at @s run function trouble_in_mc_town:shop/update_recipes