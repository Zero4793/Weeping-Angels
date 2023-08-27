#Zero_4793


summon minecraft:area_effect_cloud ^ ^ ^2 {Tags:[weeping_lock]}
execute rotated as @e[limit=1,sort=nearest] positioned ^ ^ ^2 if entity @e[type=minecraft:area_effect_cloud,tag=weeping_lock,distance=..2.5] run tag @s add observed

#kill only if looking away
execute if entity @s[tag=!observed] run kill @e[type=area_effect_cloud,tag=weeping_lock]

#else loop ray tracing towards @s(angel) checking for walls
execute if entity @s[tag=observed] at @e[type=area_effect_cloud,tag=weeping_lock,limit=1] facing entity @s feet run tp @e[type=area_effect_cloud,tag=weeping_lock,limit=1] ^ ^1 ^-2 ~ ~
execute if entity @s[tag=observed] run function zero:weeping_angels/visible_3


