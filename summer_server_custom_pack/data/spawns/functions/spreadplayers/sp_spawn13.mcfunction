# function handling the teleportation of players based on their chosen spawn

# update all of these players' spawnpoints
execute as @a[scores={spawn_team=13}] run spawnpoint @s -4504 26 6579

# village spawns (100 block radius)
execute as @a[scores={spawn_team=13,spawn_location=1}] run spreadplayers -4485 6443 0 100 false @s

# misc. structure spawns (50 block radius)
execute as @a[scores={spawn_team=13,spawn_location=2}] run spreadplayers -4357 6271 0 50 false @s
execute as @a[scores={spawn_team=13,spawn_location=3}] run spreadplayers -4557 7367 0 50 false @s