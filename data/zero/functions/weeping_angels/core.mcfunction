#Zero_4793

execute if score zero.datapackLoad server matches 1 run scoreboard players add zero.datapackCount server 1
execute if score zero.datapackLoad server matches 1 run tellraw @a [{"color":"aqua","text":"  "},{"text":"Weeping Angels ","hoverEvent":{"action":"show_text","contents":{"text":"Weeping Angels.","color":"blue"}},"color":"aqua","bold":true},{"text":"v"},{"score":{"name":"zero.weeping_angels-a","objective":"version"}},{"text":"."},{"score":{"name":"zero.weeping_angels-b","objective":"version"}},{"color":"light_purple","text":" by Zero_4793","hoverEvent":{"action":"show_text","contents":{"text":"Open PlanetMinecraft page for Zero_4793","color":"green"}},"clickEvent":{"action":"open_url","value":"https://www.planetminecraft.com/member/zero_4793/"}}]

#spawn
execute as @e[type=endermite,name="Weeping Angel"] at @s run summon zombie ~ ~ ~ {CustomName:'"Weeping Angel"',Tags:[weeping_angel],Invulnerable:1,Silent:1,PersistenceRequired:1b,Attributes:[{Name:"generic.follow_range",Base:500},{Name:"generic.movement_speed",Base:10d}],DeathLootTable:"minecraft:empty"}
kill @e[type=endermite,name="Weeping Angel"]

#spawning
execute if score zero.second server matches 0 as @e[type=villager] at @s unless entity @e[type=zombie,distance=..2] if block ^ ^1 ^-1 #logs if block ~ ~-1 ~ grass_block run summon zombie ~ ~ ~ {CustomName:'"Weeping Angel"',Tags:[weeping_angel],Invulnerable:1,Silent:1,PersistenceRequired:1b,Attributes:[{Name:"generic.follow_range",Base:500},{Name:"generic.movement_speed",Base:10d}],DeathLootTable:"minecraft:empty"}
execute if score zero.second server matches 0 as @e[type=villager] at @s if block ^ ^1 ^-1 #logs if block ~ ~-1 ~ grass_block run tp @e[type=zombie,tag=weeping_angel,limit=1,sort=nearest] ~ ~ ~ ~ ~

#visible
tag @e[type=zombie,tag=weeping_angel] remove observed
execute as @e[type=zombie,tag=weeping_angel] at @s run function zero:weeping_angels/visible_1
execute as @e[type=zombie,tag=weeping_angel,tag=!observed] run execute run data merge entity @s {NoAI:0,Invulnerable:0,InWaterTime:-1}
execute as @e[type=zombie,tag=weeping_angel,tag=observed] run execute run data merge entity @s {NoAI:1,Invulnerable:1,InWaterTime:-1}

#aesthetic
execute if score zero.tick server matches 13..19 as @e[type=zombie,tag=weeping_angel,tag=!observed] run item replace entity @s armor.head with minecraft:dispenser
execute if score zero.tick server matches 7..12 as @e[type=zombie,tag=weeping_angel,tag=!observed] run item replace entity @s armor.head with minecraft:dropper
execute if score zero.tick server matches 0..6 as @e[type=zombie,tag=weeping_angel,tag=!observed] run item replace entity @s armor.head with minecraft:observer
execute as @e[type=zombie,tag=weeping_angel,tag=!set] run item replace entity @s armor.head with minecraft:observer
execute as @e[type=zombie,tag=weeping_angel,tag=!set] run item replace entity @s armor.chest with minecraft:leather_chestplate{display:{color:10329495}}
execute as @e[type=zombie,tag=weeping_angel,tag=!set] run item replace entity @s armor.legs with minecraft:leather_leggings{display:{color:10329495}}
execute as @e[type=zombie,tag=weeping_angel,tag=!set] run item replace entity @s armor.feet with minecraft:leather_boots{display:{color:10329495}}
execute as @e[type=zombie,tag=weeping_angel,tag=!set] run effect give @s[type=zombie,tag=weeping_angel] speed 10000 12 true
execute as @e[type=zombie,tag=weeping_angel,tag=!set] run effect give @s[type=zombie,tag=weeping_angel] strength 10000 6 true
execute as @e[type=zombie,tag=weeping_angel,tag=!set] run effect give @s[type=zombie,tag=weeping_angel] invisibility 10000 1 true
tag @e[type=zombie,tag=weeping_angel] add set

#effects
execute if score zero.second server matches 0 if score zero.tick server matches 0 run effect give @e[type=zombie,tag=weeping_angel] speed 600 12 true
execute if score zero.second server matches 0 if score zero.tick server matches 0 run effect give @e[type=zombie,tag=weeping_angel] strength 600 6 true
execute if score zero.second server matches 0 if score zero.tick server matches 0 run effect give @e[type=zombie,tag=weeping_angel] invisibility 600 1 true

#to add:
#include doors in transparent
#stop them despawning