# purge the storage
data remove storage legendary_artifacts:inventories Inventory
# fill the storage with own inventory
data modify storage legendary_artifacts:inventories Inventory set from entity @s Inventory


# run the loop to drop all items
execute if data storage legendary_artifacts:inventories Inventory[0] run function legendary_artifacts:artifacts/chaos_crystal/self_drop_everything_loop


# clear its own Inventory
clear @s
# purge the storage
data remove storage legendary_artifacts:inventories Inventory
