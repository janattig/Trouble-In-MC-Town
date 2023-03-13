# innocent killed by innocent
execute as @s[tag=ttt_innocent] if entity @e[type=item, tag=ttt_resolving, nbt={Item:{tag:{innocent:1b}}}] run title @s subtitle ["", {"text":"Teamkill!  (-","color":"white"},{"text":"1","color":"blue"},{"text":" point)","color":"white"}]
execute as @s[tag=ttt_innocent] if entity @e[type=item, tag=ttt_resolving, nbt={Item:{tag:{innocent:1b}}}] run scoreboard players remove @s ttt_score 1
execute as @s[tag=ttt_innocent] if entity @e[type=item, tag=ttt_resolving, nbt={Item:{tag:{innocent:1b}}}] run tellraw @s ["", {"text":"> -"},{"text":"1","bold":true,"color":"blue"}, {"text":" points (Teamkill)"}]

# traitor killed by innocent
execute as @s[tag=ttt_innocent] if entity @e[type=item, tag=ttt_resolving, nbt={Item:{tag:{traitor:1b}}}] run title @s subtitle ["", {"text":"You killed a traitor!  (+","color":"white"},{"text":"1","color":"blue"},{"text":" point)","color":"white"}]
execute as @s[tag=ttt_innocent] if entity @e[type=item, tag=ttt_resolving, nbt={Item:{tag:{traitor:1b}}}] run scoreboard players add @s ttt_score 1
execute as @s[tag=ttt_innocent] if entity @e[type=item, tag=ttt_resolving, nbt={Item:{tag:{traitor:1b}}}] run tellraw @s ["", {"text":"> +"},{"text":"1","bold":true,"color":"blue"}, {"text":" points (killed Traitor)"}]

# traitor killed by traitor
#execute as @s[tag=ttt_traitor] if entity @e[type=item, tag=ttt_resolving, nbt={Item:{tag:{traitor:1b}}}] run title @s subtitle ["", {"text":"Teamkill!  (-","color":"white"},{"text":"1","color":"red"},{"text":" point)","color":"white"}]
#execute as @s[tag=ttt_traitor] if entity @e[type=item, tag=ttt_resolving, nbt={Item:{tag:{traitor:1b}}}] run scoreboard players remove @s ttt_score 1
#execute as @s[tag=ttt_traitor] if entity @e[type=item, tag=ttt_resolving, nbt={Item:{tag:{traitor:1b}}}] run tellraw @s ["", {"text":"> -"},{"text":"1","bold":true,"color":"red"}, {"text":" points (Teamkill)"}]


# debugging: say what kill is found
#execute as @s[tag=ttt_innocent] if entity @e[type=item, tag=ttt_resolving, nbt={Item:{tag:{innocent:1b}}}] run say Innocent killed Innocent
#execute as @s[tag=ttt_innocent] if entity @e[type=item, tag=ttt_resolving, nbt={Item:{tag:{traitor:1b}}}] run say Innocent killed Traitor
#execute as @s[tag=ttt_traitor] if entity @e[type=item, tag=ttt_resolving, nbt={Item:{tag:{traitor:1b}}}] run say Traitor killed Traitor
#execute as @s[tag=ttt_traitor] if entity @e[type=item, tag=ttt_resolving, nbt={Item:{tag:{innocent:1b}}}] run say Traitor killed Innocent
