

execute if score @e[tag=center,limit=1] runCommand matches 1..36 as @e[tag=center,limit=1] run function emi:lookat
execute if score @e[tag=center1,limit=1] runCommand matches 1..36 as @e[tag=center1,limit=1] run function emi:lookat
execute if score @e[tag=center2,limit=1] runCommand matches 1..36 as @e[tag=center2,limit=1] run function emi:lookat
execute if score @e[tag=center3,limit=1] runCommand matches 1..36 as @e[tag=center3,limit=1] run function emi:lookat
execute if score @e[tag=center4,limit=1] runCommand matches 1..36 as @e[tag=center4,limit=1] run function emi:lookat


execute if score @e[tag=center,limit=1] runCommand matches 1..150 run scoreboard players add @e[tag=center] runCommand 1
execute if score @e[tag=center1,limit=1] runCommand matches 1..100 run scoreboard players add @e[tag=center1] runCommand 1
execute if score @e[tag=center2,limit=1] runCommand matches 1..100 run scoreboard players add @e[tag=center2] runCommand 1
execute if score @e[tag=center3,limit=1] runCommand matches 1..100 run scoreboard players add @e[tag=center3] runCommand 1
execute if score @e[tag=center4,limit=1] runCommand matches 1..100 run scoreboard players add @e[tag=center4] runCommand 1


execute if score @e[tag=center,limit=1] runCommand matches 140.. run kill @e[tag=timearrow]
execute if score @e[tag=center,limit=1] runCommand matches 140.. run kill @e[tag=center]
execute if score @e[tag=center1,limit=1] runCommand matches 70.. run kill @e[tag=center1]
execute if score @e[tag=center2,limit=1] runCommand matches 70.. run kill @e[tag=center2]
execute if score @e[tag=center3,limit=1] runCommand matches 70.. run kill @e[tag=center3]
execute if score @e[tag=center4,limit=1] runCommand matches 70.. run kill @e[tag=center4]

execute if score @e[tag=center4,limit=1] runCommand matches 70.. as @e[type=!minecraft:player,type=!minecraft:marker,type=!#arrows,limit=1,sort=nearest] run data merge entity @s {NoAI:0}

execute if score @e[tag=center,limit=1] runCommand matches 50 run function emi:fire
execute if score @e[tag=center,limit=1] runCommand matches 45 at @e[tag=center] run playsound emi:arrow_hit master @a ~ ~ ~ 1
