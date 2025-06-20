# function handling the teleportation of players based on their chosen spawn

# update all of these players' spawnpoints
execute as @a[scores={spawn_team=4}] run spawnpoint @s 8184 60 -1171

# village spawns (100 block radius)
execute as @a[scores={spawn_team=4,spawn_location=1}] run spreadplayers 8459 -1449 0 100 false @s

# buried treasure spawns (20 blocks radius)
execute as @a[scores={spawn_team=4,spawn_location=2}] run spreadplayers 7487 -1777 0 20 false @s
execute as @a[scores={spawn_team=4,spawn_location=3}] run spreadplayers 7451 -2365 0 20 false @s

# misc. structure spawns (50 block radius)
execute as @a[scores={spawn_team=4,spawn_location=4}] run spreadplayers 7703 -409 0 50 false @s
execute as @a[scores={spawn_team=4,spawn_location=5}] run spreadplayers 7203 -1813 0 50 false @s
execute as @a[scores={spawn_team=4,spawn_location=6}] run spreadplayers 7359 -825 0 50 false @s