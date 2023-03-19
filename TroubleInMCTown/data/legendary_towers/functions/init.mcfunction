# add a scoreboard for various uses
scoreboard objectives add legendary_towers dummy

# cooldown variables
scoreboard objectives add lt_cooldowns dummy
scoreboard objectives add lt_cooldowns_max dummy

# motion variables
scoreboard objectives add lt_motion_x dummy
scoreboard objectives add lt_motion_y dummy
scoreboard objectives add lt_motion_z dummy
scoreboard objectives add lt_motion_x2 dummy
scoreboard objectives add lt_motion_y2 dummy
scoreboard objectives add lt_motion_z2 dummy

# variables for damage stats
scoreboard objectives add lt_speed_multiplier dummy
scoreboard objectives add lt_damage dummy
scoreboard objectives add lt_damage_2 dummy

# remove all towers
function legendary_towers:remove_all_towers