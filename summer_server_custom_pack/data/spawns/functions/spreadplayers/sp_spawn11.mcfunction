# function handling the teleportation of players based on their chosen spawn

# update all of these players' spawnpoints
execute as @a[scores={spawn_team=11}] run spawnpoint @s 1227 19 6959

# village spawns (100 block radius)
execute as @a[scores={spawn_team=11,spawn_location=1}] run spreadplayers 1075 7375 0 100 false @s

# buried treasure spawns (20 blocks radius)
execute as @a[scores={spawn_team=11,spawn_location=2}] run spreadplayers 951 6131 0 20 false @s
execute as @a[scores={spawn_team=11,spawn_location=3}] run spreadplayers 775 6423 0 20 false @s
execute as @a[scores={spawn_team=11,spawn_location=4}] run spreadplayers 1423 6503 0 20 false @s

# misc. structure spawns (50 block radius)
execute as @a[scores={spawn_team=11,spawn_location=5}] run spreadplayers 755 7131 0 50 false @s