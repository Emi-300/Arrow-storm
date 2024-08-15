

execute at @e[type=!minecraft:player,type=!minecraft:marker,type=!#arrows,limit=1,sort=nearest] run summon minecraft:marker ~ ~ ~ {Invulnerable:1,NoAI:1,NoGravity:1,Tags:["center"]}
execute at @e[type=!minecraft:player,type=!minecraft:marker,type=!#arrows,limit=1,sort=nearest] run summon minecraft:marker ~ ~ ~ {Invulnerable:1,NoAI:1,NoGravity:1,Tags:["center1"]}
execute as @e[tag=center1] at @s run tp @s ~ ~ ~ ~ ~-15
execute at @e[type=!minecraft:player,type=!minecraft:marker,type=!#arrows,limit=1,sort=nearest] run summon minecraft:marker ~ ~ ~ {Invulnerable:1,NoAI:1,NoGravity:1,Tags:["center2"]}
execute as @e[tag=center2] at @s run tp @s ~ ~ ~ ~ ~-30
execute at @e[type=!minecraft:player,type=!minecraft:marker,type=!#arrows,limit=1,sort=nearest] run summon minecraft:marker ~ ~ ~ {Invulnerable:1,NoAI:1,NoGravity:1,Tags:["center3"]}
execute as @e[tag=center3] at @s run tp @s ~ ~ ~ ~ ~-45
execute at @e[type=!minecraft:player,type=!minecraft:marker,type=!#arrows,limit=1,sort=nearest] run summon minecraft:marker ~ ~ ~ {Invulnerable:1,NoAI:1,NoGravity:1,Tags:["center4"]}
execute as @e[tag=center4] at @s run tp @s ~ ~ ~ ~ ~-60

execute as @e[type=!minecraft:player,type=!minecraft:marker,type=!#arrows,limit=1,sort=nearest] run data merge entity @s {NoAI:1}

execute at @e[tag=center] run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 10 1
execute at @e[tag=center] run playsound minecraft:entity.elder_guardian.death master @a ~ ~ ~ 10
execute at @e[tag=center] run playsound minecraft:entity.warden.sonic_charge master @a ~ ~ ~ 10


scoreboard players set @e[tag=center,limit=1] runCommand 1
scoreboard players set @e[tag=center1,limit=1] runCommand 1
scoreboard players set @e[tag=center2,limit=1] runCommand 1
scoreboard players set @e[tag=center3,limit=1] runCommand 1
scoreboard players set @e[tag=center4,limit=1] runCommand 1


