image_speed = .5
image_index = 0
Size = 1
maxSize = 4
growRate = .025 // rate at which fireball size / damage grows
dmgBase = .5 // base damage
dmgMod = .1 // damage per growth
spdMod = .33
effectType = 1 // Burn Effect?
effectChance = .1 // likeliness of causing burn
shot = false
Damage = dmgBase + (dmgMod*(Size-1))


startAni = spr_fire_form
chargeAni = spr_fire_charge
shootAni = spr_fire_charge

moveSpeed = 15

caster = 0