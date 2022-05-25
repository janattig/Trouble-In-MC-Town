# additional particle and sound effects
particle minecraft:explosion ~ ~ ~

# summon a trio of endermen
summon minecraft:enderman ~ ~0.5 ~ {carriedBlockState:{Name:diamond},PersistenceRequired:1,Attributes:[{Name:"generic.attack_damage",Base:4.0F},{Name:"generic.attack_knockback",Base:1.0F}], Tags:["sp_summoned"]}
summon minecraft:enderman ~0.5 ~ ~ {carriedBlockState:{Name:diamond},PersistenceRequired:1,Attributes:[{Name:"generic.attack_damage",Base:4.0F},{Name:"generic.attack_knockback",Base:1.0F}], Tags:["sp_summoned"]}
summon minecraft:enderman ~ ~ ~0.5 {carriedBlockState:{Name:diamond},PersistenceRequired:1,Attributes:[{Name:"generic.attack_damage",Base:4.0F},{Name:"generic.attack_knockback",Base:1.0F}], Tags:["sp_summoned"]}

# make angry at nearest player
execute as @e[type=enderman, sort=nearest, limit=3] at @s run function summoning_potions:scripts/try_make_self_angry_at_nearest_player
