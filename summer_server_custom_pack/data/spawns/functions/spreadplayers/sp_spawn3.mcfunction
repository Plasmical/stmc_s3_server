# function handling the teleportation of players based on their chosen spawn

# update all of these players' spawnpoints
execute as @a[scores={spawn_team=3}] run spawnpoint @s 9654 49 -5643

# village spawns (100 block radius)
execute as @a[scores={spawn_team=3,spawn_location=1}] run spreadplayers 9978 -5839 0 100 false @s

# buried treasure spawns (20 blocks radius)
execute as @a[scores={spawn_team=3,spawn_location=2}] run spreadplayers 9358 -6039 0 20 false @s

# misc. structure spawns (50 block radius)
execute as @a[scores={spawn_team=3,spawn_location=3}] run spreadplayers 9258 -5171 0 50 false @s
execute as @a[scores={spawn_team=3,spawn_location=4}] run spreadplayers 9798 -5967 0 50 false @s