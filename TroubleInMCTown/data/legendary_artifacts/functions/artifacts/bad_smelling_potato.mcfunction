# apply sickness to all other players around
effect give @a[distance=0.5..10, tag=!la_unaffected, gamemode=!spectator, nbt=!{ActiveEffects:[{Id:9}]}] minecraft:nausea 5
effect give @a[distance=0.5..10, tag=!la_unaffected, gamemode=!spectator, nbt=!{ActiveEffects:[{Id:17}]}] minecraft:hunger 1
effect give @a[distance=0.5..10, tag=!la_unaffected, gamemode=!spectator, nbt=!{ActiveEffects:[{Id:19}]}] minecraft:poison 1

particle minecraft:ash ^-0.5 ^1.2 ^0.5 0.5 0.5 0.5 0.005 1 force