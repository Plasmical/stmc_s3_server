# function handling the teleportation of players based on their chosen spawn

# update all of these players' spawnpoints
execute as @a[scores={spawn_team=6}] run spawnpoint @s 9550 21 7019

# village spawns (100 block radius)
execute as @a[scores={spawn_team=6,spawn_location=1}] run spreadplayers 9267 6931 0 100 false @s

# buried treasure spawns (20 blocks radius)
execute as @a[scores={spawn_team=6,spawn_location=2}] run spreadplayers 9907 7239 0 20 false @s
execute as @a[scores={spawn_team=6,spawn_location=3}] run spreadplayers 9980 6967 0 20 false @s

# misc. structure spawns (50 block radius)
execute as @a[scores={spawn_team=6,spawn_location=4}] run spreadplayers 9343 7171 0 50 false @s
execute as @a[scores={spawn_team=6,spawn_location=5}] run spreadplayers 8771 6239 0 50 false @s
execute as @a[scores={spawn_team=6,spawn_location=6}] run spreadplayers 9715 7343 0 50 false @s