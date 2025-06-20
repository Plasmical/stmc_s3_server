# function handling the teleportation of players based on their chosen spawn

# update all of these players' spawnpoints
execute as @a[scores={spawn_team=16}] run spawnpoint @s -8906 14 493

# village spawns (100 block radius)
execute as @a[scores={spawn_team=16,spawn_location=1}] run spreadplayers -9098 55 0 100 false @s

# buried treasure spawns (20 block radius)
execute as @a[scores={spawn_team=16,spawn_location=2}] run spreadplayers -8286 125 0 20 false @s
execute as @a[scores={spawn_team=16,spawn_location=3}] run spreadplayers -8842 645 0 20 false @s

# misc. structure spawns (50 block radius)
execute as @a[scores={spawn_team=16,spawn_location=4}] run spreadplayers -8506 697 0 50 false @s
execute as @a[scores={spawn_team=16,spawn_location=5}] run spreadplayers -8550 245 0 50 false @s
execute as @a[scores={spawn_team=16,spawn_location=6}] run spreadplayers -8686 425 0 50 false @s