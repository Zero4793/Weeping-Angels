#as angel, at possible observer, facing angel

tag @s remove obscured
tag @s remove C
tag @s remove BL
tag @s remove BM
tag @s remove BR
tag @s remove ML
tag @s remove MR
tag @s remove TL
tag @s remove TM
tag @s remove TR

summon area_effect_cloud ^ ^ ^2 {Tags:[directionCheck]}

#if not: end(not observed) | if yes: ray trace
execute rotated as @e[limit=1,sort=nearest] positioned ^ ^ ^2 if entity @e[type=minecraft:area_effect_cloud,tag=directionCheck,distance=..2.5] positioned ^ ^ ^-2 facing entity @s feet run function zero:weeping_angels/visible_3

kill @e[tag=directionCheck]
