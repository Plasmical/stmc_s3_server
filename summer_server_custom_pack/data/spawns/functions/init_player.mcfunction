# function for sending player to spawn & giving them spawn items

# teleport player back to spawn of world
execute as @a[scores={spawn_status=2}] run tp @s 0 79 0

# clear inventory & effects
execute as @a[scores={spawn_status=2}] run clear @s
execute as @a[scores={spawn_status=2}] run effect clear @s

# give some spawn effects
execute as @a[scores={spawn_status=2}] run effect give @s saturation infinite 1 false
execute as @a[scores={spawn_status=2}] run effect give @s resistance infinite 4 false
execute as @a[scores={spawn_status=2}] run effect give @s water_breathing infinite 0 false

# award info book to players
execute as @a[scores={spawn_status=2}] run advancement grant @s only info:welcome

# award 1 LevelZ point
execute as @a[scores={spawn_status=2}] run playerstats @s add points 1

# confirm player completion
execute as @a[scores={spawn_status=2}] run scoreboard players set @s spawn_status 3