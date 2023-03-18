# add a tag to all towers that they need be updated
tag @e[type=marker, tag=legendary_tower] add lt_needs_update

# handle towers recursively
function legendary_towers:handle_towers_recursively