# MANAGE AMBIENCE FADING OUT AFTER TRANSITION
execute unless score @s twis.loc = @s twis.locsw unless score @s twis.trans matches 1.. run scoreboard players set @s twis.trans 1
execute if score @s twis.trans matches 1..10 run function thewii:immersive/ambience/transition

# MANAGE BACKGROUND AMBIENCE
execute unless score @s twis.backgr = @s twis.backgrsw unless score @s twis.trans matches 1.. run scoreboard players set @s twis.trans 11
execute if score @s twis.trans matches 11..20 run function thewii:immersive/ambience/backgr_switch

# MANAGE AMBIENCE LOOP
execute if score @s twis.loc matches 1..100 if score @s twis.outside matches 1 run function thewii:immersive/ambience/surface_loop
execute if score @s twis.loc matches 101..300 run function thewii:immersive/ambience/underground_loop

# MANAGE OUTSIDE/INSIDE TRANSITION
execute if score @s twis.loc matches 1..100 if score @s twis.outside matches 0 if score @s twis.loop matches 1.. unless score @s twis.enter matches 1.. run scoreboard players set @s twis.enter 1
execute if score @s twis.enter matches 1.. run function thewii:immersive/ambience/enter