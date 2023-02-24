# called every tick, search for players which wield or off-hand wield or wears a legendary artifact
tag @a remove la_wields_artifact
tag @a remove la_wields_mainhand
tag @a remove la_wields_offhand
tag @a remove la_wields_helmet
tag @a remove la_wields_chestplate
tag @a remove la_wields_leggings
tag @a remove la_wields_boots
tag @a[nbt={SelectedItem:{tag:{legendary_artifact:1b}}}] add la_wields_mainhand
tag @a[nbt={Inventory:[{Slot:-106b, tag:{legendary_artifact:1b}}]}] add la_wields_offhand
tag @a[nbt={Inventory:[{Slot:103b, tag:{legendary_artifact:1b}}]}] add la_wields_helmet
tag @a[nbt={Inventory:[{Slot:102b, tag:{legendary_artifact:1b}}]}] add la_wields_chestplate
tag @a[nbt={Inventory:[{Slot:101b, tag:{legendary_artifact:1b}}]}] add la_wields_leggings
tag @a[nbt={Inventory:[{Slot:100b, tag:{legendary_artifact:1b}}]}] add la_wields_boots
tag @a[tag=la_wields_mainhand] add la_wields_artifact
tag @a[tag=la_wields_offhand] add la_wields_artifact
tag @a[tag=la_wields_helmet] add la_wields_artifact
tag @a[tag=la_wields_chestplate] add la_wields_artifact
tag @a[tag=la_wields_leggings] add la_wields_artifact
tag @a[tag=la_wields_boots] add la_wields_artifact

execute if entity @a[tag=la_wields_artifact] run function legendary_artifacts:handle_players



# find items on ground
execute as @e[type=item, nbt={Item:{tag:{legendary_artifact:1b}}}] at @s run function legendary_artifacts:handle_item_on_ground