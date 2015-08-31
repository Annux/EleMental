//////////// -----BASE STATS----- ////////////
// NOTE: These stats will be directly modified by the player upon certain level-ups
// they probably wont be these base numbers in the end
POW = 10 // Power: Damage dealt
END = 10 // Endurance: Health regen, Energy regen
DEF = 10 // Defense: Health, burst damage reduction
SPD = 5 // Speed: Movement speed, (cooldown reduction?)
INT = 10 // Intelligence: Effect chance, effect power
RES = 10 // Resistance: Effect resistance, damage over time reduction

//////////// -OFFENSIVE STATS- /////////////
// POW will affect each spell differently
// INT will affect each spell differently

//////////// -DEFENSIVE STATS- ////////////
hpRegen   = END*.025/room_speed // Rate of health recovery
manaRegen = END*.1/room_speed   // Rate of mana recovery
Health    = 80+(DEF*2)          // Health. D-doy Duh.
dmgReduc  = 100/(100+DEF)       // % of damage received
dotReduc  = 100/(100+RES)       // % of dot damage recieved, % of effect duration reduction
effRes    = 100/(100+(RES/2))   // % chance of ignoring successful effect

Status    = 0 // State. We'll have to decide what numbers mean what (1 = Slowed, 2 = Stunned, etc)

////////////// -MOVEMENT STATS- //////////////
turnSpeed = 10 + (SPD*.1)
maxSpeed = 5 + (SPD*.15)
reducedSpeed = maxSpeed*.333
accel = .5+((SPD-10)*.05)
if(accel > maxSpeed)
    {accel = maxSpeed}

////////////// -ELEMENT SETUP- //////////////
spellType = true // type of spell to cast (true or 1 = primary, false or 0 = secondary)
curElem = 1

////////////// -ANIMATION- //////////////
walkAnim = sprPlayerWalk
idleAnim = sprPlayerIdle

playerAttacking = false
