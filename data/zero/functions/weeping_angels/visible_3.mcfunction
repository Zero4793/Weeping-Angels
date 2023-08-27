#as angel, at possible observer or closer, facing angel

#particle minecraft:end_rod ~ ~ ~ 0 0 0 0 1

#check if observed
execute if entity @s[distance=..1] run tag @s add observed

#check if obscured
execute unless block ^ ^1 ^ #zero:transparent run tag @s add C
execute unless block ^1 ^ ^ #zero:transparent run tag @s add BL
execute unless block ^ ^ ^ #zero:transparent run tag @s add BM
execute unless block ^-1 ^ ^ #zero:transparent run tag @s add BR
execute unless block ^1 ^1 ^ #zero:transparent run tag @s add ML
execute unless block ^-1 ^1 ^ #zero:transparent run tag @s add MR
execute unless block ^1 ^2 ^ #zero:transparent run tag @s add TL
execute unless block ^ ^2 ^ #zero:transparent run tag @s add TM
execute unless block ^-1 ^2 ^ #zero:transparent run tag @s add TR
tag @s[tag=C,tag=BL,tag=BM,tag=BR,tag=ML,tag=MR,tag=TL,tag=TM,tag=TR] add obscured

#step if not observed AND not blocked
execute if entity @s[tag=!observed,tag=!obscured] positioned ^ ^ ^1 run function zero:weeping_angels/visible_3
