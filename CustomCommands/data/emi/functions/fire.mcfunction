# execute as @e[tag=frozen] at @s store result entity @s Motion[0] double 1 run data get entity @s Motion[0] 
# execute as @e[tag=frozen] at @s store result entity @s Motion[1] double 1 run data get entity @s Motion[1] 
# execute as @e[tag=frozen] at @s store result entity @s Motion[2] double 1 run data get entity @s Motion[2] 


execute as @e[tag=frozen] store result score @s fireX run data get entity @s Motion[0] 1000
execute as @e[tag=frozen] store result score @s fireY run data get entity @s Motion[1] 1000
execute as @e[tag=frozen] store result score @s fireZ run data get entity @s Motion[2] 1000

scoreboard players operation @e[tag=frozen] fireX *= @p fireX
scoreboard players operation @e[tag=frozen] fireY *= @p fireX
scoreboard players operation @e[tag=frozen] fireZ *= @p fireX

execute as @e[tag=frozen] store result entity @s Motion[0] double 0.001 run scoreboard players get @s fireX
execute as @e[tag=frozen] store result entity @s Motion[1] double 0.001 run scoreboard players get @s fireY
execute as @e[tag=frozen] store result entity @s Motion[2] double 0.001 run scoreboard players get @s fireZ



tag @e[tag=frozen] remove frozen
