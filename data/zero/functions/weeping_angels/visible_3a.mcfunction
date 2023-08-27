#Zero_4793

execute as @e[type=area_effect_cloud,tag=weeping_lock] at @s run tp @s ^ ^ ^.5
#execute as @e[type=area_effect_cloud,tag=weeping_lock] at @s run particle minecraft:end_rod ~ ~1 ~ 0 0 0 0 1



#pass and remove obs if all 9 tag
execute as @e[type=area_effect_cloud,tag=weeping_lock] at @s unless block ^ ^ ^ #zero:transparent run tag @s add C
execute as @e[type=area_effect_cloud,tag=weeping_lock] at @s unless block ^1 ^-1 ^ #zero:transparent run tag @s add BL
execute as @e[type=area_effect_cloud,tag=weeping_lock] at @s unless block ^ ^-1 ^ #zero:transparent run tag @s add BM
execute as @e[type=area_effect_cloud,tag=weeping_lock] at @s unless block ^-1 ^-1 ^ #zero:transparent run tag @s add BR
execute as @e[type=area_effect_cloud,tag=weeping_lock] at @s unless block ^1 ^ ^ #zero:transparent run tag @s add ML
execute as @e[type=area_effect_cloud,tag=weeping_lock] at @s unless block ^-1 ^ ^ #zero:transparent run tag @s add MR
execute as @e[type=area_effect_cloud,tag=weeping_lock] at @s unless block ^1 ^1 ^ #zero:transparent run tag @s add TL
execute as @e[type=area_effect_cloud,tag=weeping_lock] at @s unless block ^ ^1 ^ #zero:transparent run tag @s add TM
execute as @e[type=area_effect_cloud,tag=weeping_lock] at @s unless block ^-1 ^1 ^ #zero:transparent run tag @s add TR
execute at @e[type=area_effect_cloud,tag=weeping_lock,tag=C,tag=BL,tag=BM,tag=BR,tag=ML,tag=MR,tag=TL,tag=TM,tag=TR,] run tag @e[type=area_effect_cloud,tag=weeping_lock] add complete
execute at @e[type=area_effect_cloud,tag=weeping_lock,tag=complete] run tag @s remove observed


#pass and leave obs if reach angel
execute at @e[type=area_effect_cloud,tag=weeping_lock] if entity @s[distance=..1.5] run tag @e[type=area_effect_cloud,tag=weeping_lock] add complete

#else loop (march ray trace)
execute if entity @e[type=area_effect_cloud,tag=weeping_lock,tag=!complete] run function zero:weeping_angels/visible_3

kill @e[type=area_effect_cloud,tag=weeping_lock]

#ray trace from observerr to angel, first check view direction, if looking, then trace until hit block or @s (angel) to determine if observed
#remember to kill weeping lock at completion
#9 tags, C,BL,ML,MR,...
#if weepinglock gets all before reaching @s(angel) then remove observed