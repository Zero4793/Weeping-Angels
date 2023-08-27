#Zero_4793


execute if entity @s[tag=!observed] at @e[type=zombie,tag=weeping_angel,distance=1..128,sort=nearest] facing entity @s feet run function zero:weeping_angels/visible_2
execute if entity @s[tag=!observed] at @a[gamemode=!spectator,distance=..128,sort=nearest] facing entity @s feet run function zero:weeping_angels/visible_2
execute if entity @s[tag=!observed] at @e[type=iron_golem,distance=1..128,sort=nearest] facing entity @s feet run function zero:weeping_angels/visible_2
execute if entity @s[tag=!observed] at @e[type=villager,distance=..128,sort=nearest] facing entity @s feet run function zero:weeping_angels/visible_2
