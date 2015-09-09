//// General stuff //
targetX = obj_player.x + random_range(-100, 100); // only applicable for enemy
targetY = obj_player.y + random_range(-100, 100); // only applicable for enemy

///// Effect /////
effectType = 2 // Slow Effect
    // code about how much it slows over time!?
effect2Type = 5 // Freeze Effect
effectChance = .1 // likeliness of causing freeze

effectIncreaseRate = .1

///// Growth /////
caster = 0

///// Modifiers /////
spdMod = 0
dmgMod = 0
intMod = 0
Damage = .00025

//// Animation & Movement ///
alarm[0] = room_speed*2