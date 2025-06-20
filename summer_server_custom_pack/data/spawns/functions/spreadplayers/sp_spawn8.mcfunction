# function handling the teleportation of players based on their chosen spawn

# update all of these players' spawnpoints
execute as @a[scores={spawn_team=8}] run spawnpoint @s 6984 23 8131

# village spawns (100 block radius)
execute as @a[scores={spawn_team=8,spawn_location=1}] run spreadplayers 7016 8575 0 100 false @s
execute as @a[scores={spawn_team=8,spawn_location=2}] run spreadplayers 7396 8051 0 100 false @s

# buried treasure spawns (20 blocks radius)
execute as @a[scores={spawn_team=8,spawn_location=3}] run spreadplayers 6139 7815 0 20 false @s
execute as @a[scores={spawn_team=8,spawn_location=4}] run spreadplayers 6091 8535 0 20 false @s

# misc. structure spawns (50 block radius)
execute as @a[scores={spawn_team=8,spawn_location=5}] run spreadplayers 6263 7303 0 50 false @s
execute as @a[scores={spawn_team=8,spawn_location=6}] run spreadplayers 7180 7827 0 50 false @s