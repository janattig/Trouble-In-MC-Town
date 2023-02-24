# if there is an item in storage, summon a new temporary item and fill it with the data
execute if data storage legendary_artifacts:inventories Inventory[0] anchored eyes run summon item ~ ~1 ~ {Item:{id:"minecraft:iron_ingot",Count:1b},Tags:["dropped_item"], PickupDelay:80, Motion:[0.0d, 0.5d, 0.0d]}
execute if data storage legendary_artifacts:inventories Inventory[0] run data modify entity @e[type=item,tag=dropped_item,limit=1, sort=nearest] Item set from storage legendary_artifacts:inventories Inventory[0]


# give the item random motion
scoreboard players set %max_random_number legendary_artifacts 100

execute store result score %random_number legendary_artifacts run data get entity @e[tag=dropped_item, limit=1, sort=nearest] UUID[0] 1
scoreboard players operation %random_number legendary_artifacts %= %max_random_number legendary_artifacts
scoreboard players remove %random_number legendary_artifacts 50
execute store result entity @e[tag=dropped_item, limit=1, sort=nearest] Motion[0] double 0.002 run scoreboard players get %random_number legendary_artifacts

execute store result score %random_number legendary_artifacts run data get entity @e[tag=dropped_item, limit=1, sort=nearest] UUID[2] 1
scoreboard players operation %random_number legendary_artifacts %= %max_random_number legendary_artifacts
scoreboard players remove %random_number legendary_artifacts 50
execute store result entity @e[tag=dropped_item, limit=1, sort=nearest] Motion[2] double 0.002 run scoreboard players get %random_number legendary_artifacts

# remove the tag that identifies as newly spawned item
tag @e[type=item, tag=dropped_item] add la_disabled
tag @e[type=item] remove dropped_item


# remove first item in storage
data remove storage legendary_artifacts:inventories Inventory[0]
# loop again if there are items in storage left
execute if data storage legendary_artifacts:inventories Inventory[0] run function legendary_artifacts:artifacts/chaos_crystal/self_drop_everything_loop
