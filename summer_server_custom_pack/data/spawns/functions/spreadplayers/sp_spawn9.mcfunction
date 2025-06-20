# function handling the teleportation of players based on their chosen spawn

# update all of these players' spawnpoints
execute as @a[scores={spawn_team=9}] run spawnpoint @s 4329 57 5695

# village spawns (100 block radius)
execute as @a[scores={spawn_team=9,spawn_location=1}] run spreadplayers 4135 5287 0 100 false @s

# buried treasure spawns (20 blocks radius)
execute as @a[scores={spawn_team=9,spawn_location=2}] run spreadplayers 4003 5287 0 20 false @s
execute as @a[scores={spawn_team=9,spawn_location=3}] run spreadplayers 4531 5191 0 20 false @s
execute as @a[scores={spawn_team=9,spawn_location=4}] run spreadplayers 4827 6191 0 20 false @s

# misc. structure spawns (50 block radius)
execute as @a[scores={spawn_team=9,spawn_location=5}] run spreadplayers 4115 5767 0 50 false @s
execute as @a[scores={spawn_team=9,spawn_location=6}] run spreadplayers 4223 6227 0 50 false @s