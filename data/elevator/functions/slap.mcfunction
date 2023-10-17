playsound minecraft:entity.player.attack.crit master @a ~ ~ ~ 1 1.5
execute if entity @s[advancements={elevator:elevator/slap=true}] run effect give @s weakness 999999 255 true
advancement revoke @s only elevator:elevator/slap
scoreboard players set @s slap_delay 2400