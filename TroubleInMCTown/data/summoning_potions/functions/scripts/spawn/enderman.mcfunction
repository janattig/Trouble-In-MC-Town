# additional particle and sound effects
particle minecraft:explosion ~ ~ ~

# summon a trio of endermen
summon minecraft:enderman ~ ~0.5 ~ {carriedBlockState:{Name:"wither_skeleton_skull"},PersistenceRequired:1,Attributes:[{Name:"generic.attack_damage",Base:4.0d},{Name:"generic.attack_knockback",Base:1.0d}], Tags:["sp_summoned"]}
summon minecraft:enderman ~0.5 ~ ~ {carriedBlockState:{Name:"wither_skeleton_skull"},PersistenceRequired:1,Attributes:[{Name:"generic.attack_damage",Base:4.0d},{Name:"generic.attack_knockback",Base:1.0d}], Tags:["sp_summoned"]}
summon minecraft:enderman ~ ~ ~0.5 {carriedBlockState:{Name:"wither_skeleton_skull"},PersistenceRequired:1,Attributes:[{Name:"generic.attack_damage",Base:4.0d},{Name:"generic.attack_knockback",Base:1.0d}], Tags:["sp_summoned"]}