scoreboard objectives add timer_t dummy
scoreboard objectives add timer_s dummy
scoreboard objectives add timer_m dummy
scoreboard objectives add timer_h dummy
scoreboard objectives add seen_credits dummy
execute as @e[type=minecraft:player,scores={seen_credits=0}] store result score @s seen_credits run data get entity @s seenCredits
execute if entity @a[scores={seen_credits=1}] run function run:stop_timer
execute unless entity @a[scores={seen_credits=1..}] run function run:0x7718150f
scoreboard players add @a timer_s 0
scoreboard players add @a timer_m 0
scoreboard players add @a timer_h 0
scoreboard players add @a seen_credits 0
execute as @a[scores={timer_t=100..}] run function run:0x99a30623
execute as @a[scores={timer_s=60..}] run function run:0xdd77c08a
execute as @a[scores={timer_m=60..}] run function run:0xeb796a5a
title @a times 0 1 0
execute as @a run function run:0xb55208ea
