# called to update own score position
# = #people-with-more-points + 1

scoreboard players set @s ttt_score_position 1
execute as @a run execute if score @s ttt_score > @p ttt_score run scoreboard players add @p ttt_score_position 1