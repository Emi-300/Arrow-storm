
execute as @s at @s run tp @s ~ ~ ~ ~10 ~


execute as @s at @s anchored eyes run summon spectral_arrow ^ ^-1 ^5 {Tags:["arrow","frozen","timearrow"],NoGravity:1,damage:500}


# summon the temporary entity at the players position

summon marker ~ ~ ~ {Tags:["direction"],NoGravity:1,Invulnerable:1}


# say giving rotation

execute store result entity @e[tag=direction,limit=1] Rotation[0] float 1 run data get entity @s Rotation[0]
execute store result entity @e[tag=direction,limit=1] Rotation[1] float 0.1 run data get entity @s Rotation[1]


execute as @e[tag=direction,limit=1] at @s run tp @s ^ ^ ^-0.01

execute as @e[tag=direction,limit=1] at @s run data modify storage emi:storage Pos set from entity @s Pos

data modify entity @e[tag=arrow,limit=1] Motion set from storage emi:storage Pos

kill @e[tag=direction] 

tag @e[tag=arrow] remove arrow



