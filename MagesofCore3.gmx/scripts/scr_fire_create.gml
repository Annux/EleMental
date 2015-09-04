//// General stuff //
moveSpeed = 15
targetX = obj_player.x + random_range(-100, 100); // only applicable for enemy
targetY = obj_player.y + random_range(-100, 100); // only applicable for enemy

///// Damage /////
dmgBase = .5 // base damage


///// Effect /////
effectType = 1 // Burn Effect?
effectChance = .1 // likeliness of causing burn
shot = false


///// Growth /////
growRate = .05 // rate at which fireball size / damage grows
dmgPerGrow = 1 // damage per growth
spdPerGrow = 1 // speed reduction per growth
Size = 1
maxSize = 4


///// Formulas /////
// Note that these formulas are here for reference. Refer to the actual step script to change them in action.
Damage = dmgBase + (dmgPerGrow*(Size))
Speed = moveSpeed - (spdPerGrow*(Size))



//// Animation & Movement ///
startAni = spr_fire_form
chargeAni = spr_fire_charge
shootAni = spr_fire_charge

image_speed = .5
image_index = 0
