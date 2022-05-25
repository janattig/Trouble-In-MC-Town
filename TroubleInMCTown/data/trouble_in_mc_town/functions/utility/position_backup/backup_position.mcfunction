# summon an armorstand to mark the position
execute at @s run summon armor_stand ~ ~ ~ {NoGravity:1, Tags:["ttt_tp_position", "ttt_backup", "ttt_backup_new"], NoBasePlate:1, Small:1, NoHitBox:1, Marker:1b, Invisible:1}

# save player uuid in armorstand score
execute at @s run execute store result score @e[type=armor_stand, tag=ttt_backup_new, limit=1, sort=nearest] ttt_uuid_0 run data get entity @s UUID[0]
execute at @s run execute store result score @e[type=armor_stand, tag=ttt_backup_new, limit=1, sort=nearest] ttt_uuid_1 run data get entity @s UUID[1]
execute at @s run execute store result score @e[type=armor_stand, tag=ttt_backup_new, limit=1, sort=nearest] ttt_uuid_2 run data get entity @s UUID[2]
execute at @s run execute store result score @e[type=armor_stand, tag=ttt_backup_new, limit=1, sort=nearest] ttt_uuid_3 run data get entity @s UUID[3]

# remove the "new" tag of the armorstand
execute at @s run tag @e[type=armor_stand, tag=ttt_backup_new, limit=1, sort=nearest] remove ttt_backup_new

# script that is called as the player who is backing up the position
#execute store result score @s ttt_positions_x run data get entity @s Pos[0] 100
#execute store result score @s ttt_positions_y run data get entity @s Pos[1] 100
#execute store result score @s ttt_positions_z run data get entity @s Pos[2] 100
#execute store result score @s ttt_positions_a run data get entity @s Rotation[0]
#execute store result score @s ttt_positions_b run data get entity @s Rotation[1]
