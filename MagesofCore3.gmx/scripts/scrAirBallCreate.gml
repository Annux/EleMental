//// General stuff //
moveSpeed = 25
targetX = obj_player.x + random_range(-100, 100); // only applicable for enemy
targetY = obj_player.y + random_range(-100, 100); // only applicable for enemy

newAirTarget = instance_create(mouse_x, mouse_y, objAirTarget)
newAirTarget.parent = self.id
direction = point_direction(x,y,mouse_x,mouse_y)
initSpeed = false

///// Effect /////
dmgBase = .01
effectType = 4 // ???
effectChance = 1 // likeliness of causing ???

///// Growth /////
spdPerTime = .97 // speed decrease over time
caster = 0

///// Modifiers /////
spdMod = 0
dmgMod = 0
intMod = 0
Damage = dmgBase

//// Animation & Movement ///
image_speed = .25
image_index = 0
