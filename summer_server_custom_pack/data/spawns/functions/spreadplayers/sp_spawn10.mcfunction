# function handling the teleportation of players based on their chosen spawn

# update all of these players' spawnpoints
execute as @a[scores={spawn_team=10}] run spawnpoint @s 2949 22 6535

# village spawns (100 block radius)
execute as @a[scores={spawn_team=10,spawn_location=1}] run spreadplayers 3171 6275 0 100 false @s

# buried treasure spawns (20 blocks radius)
execute as @a[scores={spawn_team=10,spawn_location=2}] run spreadplayers 2551 6347 0 20 false @s
execute as @a[scores={spawn_team=10,spawn_location=3}] run spreadplayers 2135 6211 0 20 false @s

# misc. structure spawns (50 block radius)
execute as @a[scores={spawn_team=10,spawn_location=4}] run spreadplayers 3603 6175 0 50 false @s
execute as @a[scores={spawn_team=10,spawn_location=5}] run spreadplayers 2883 6427 0 50 false @s