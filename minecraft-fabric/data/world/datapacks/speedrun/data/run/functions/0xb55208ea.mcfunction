data modify storage run:store tmp_t1 set value ""
data modify storage run:store tmp_t2 set value ""
data modify storage run:store tmp_t3 set value ""
data modify storage run:store tmp_t4 set value ""
execute if entity @s[scores={timer_h=1..}] run function run:0xce701425
execute if entity @s[scores={timer_m=0..9}] if entity @s[scores={timer_h=1..}] run function run:0x4e64df4
execute if entity @s[scores={timer_s=0..9}] run function run:0xa7833cb0
execute if entity @s[scores={timer_t=0..9}] run function run:0x63de734
execute if entity @s[scores={timer_h=1..}] run function run:0xcaa085d2
execute unless entity @s[scores={timer_h=1..}] run function run:0x23106f2f
