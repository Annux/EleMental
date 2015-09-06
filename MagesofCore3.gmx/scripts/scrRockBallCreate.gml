//// General stuff //
moveSpeed = 9
playerX = obj_player.x + random_range(-100, 100); // only applicable for enemy
playerY = obj_player.y + random_range(-100, 100); // only applicable for enemy


target = instance_create(mouse_x, mouse_y, objRockTarget);
target.parent = self.id;
baseRock = false;

///// Effect /////
effectType = 2 // Stun Effect? Knockback?
effectChance = .1 // likeliness of effect

///// Growth /////
scale = 1;
maxScale = 3;


///// Modifiers /////
dmgBase = 2.5
spdMod = 0
dmgMod = 0
intMod = 0
caster = 0

//// Animation & Movement ///
image_speed = .5
