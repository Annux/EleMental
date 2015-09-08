//// General stuff //
moveSpeed = 12
targetX = obj_player.x + random_range(-100, 100); // only applicable for enemy
targetY = obj_player.y + random_range(-100, 100); // only applicable for enemy
shot = false

///// Effect /////
dmgBase = .25
effectType = 3 // Deluge/Slow Effect
effectChance = 2.5 // likeliness of causing burn

///// Growth /////
growRate = .01 // rate at which waterball grow.
spdPerGrow = 1 // speed reduction per growth
Size = 1
maxSize = 4
caster = 0

///// Modifiers /////
spdMod = 0
dmgMod = 0
intMod = 0
Damage = dmgBase

//// Animation & Movement ///
image_speed = .5
image_index = 0