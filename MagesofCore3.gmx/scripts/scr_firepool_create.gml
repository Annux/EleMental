//// General stuff //
targetX = obj_player.x + random_range(-100, 100); // only applicable for enemy
targetY = obj_player.y + random_range(-100, 100); // only applicable for enemy
growing = false


///// Effect /////
effectType = 1 // Burn Effect

damageMultiplyRate = 2

///// Growth /////
caster = 0
Size = .1
curSize = Size
dmgCompound = 1
maxSize = 2.1
image_xscale = Size
image_yscale = Size
Spin = 0
death = false

///// Modifiers /////
spdMod = 0
dmgMod = 0
intMod = 0
baseDmg = 1.25

//// Animation & Movement ///
Timer0 = room_speed*2 + 1
Timer1 = room_speed*2
alarm[0] = Timer0
alarm[1] = Timer1

canHit = false
collision = false

burnAnim = spr_firepool
inertAnim = spr_firepool_inert

image_index = 6