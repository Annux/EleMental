dmgBase = .5 // base damage
dmgMod = .1 // damage per growth
Size = 1
effectChance = .1 // likeliness of causing burn

Damage = dmgBase + (dmgMod*(Size-1))

shot = true;
targetX = obj_player.x + random_range(obj_player.x - 5, obj_player.x + 5);
targetY = obj_player.y + random_range(obj_player.y - 5, obj_player.y + 5);
