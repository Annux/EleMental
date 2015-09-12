//////////// -----BASE STATS----- ////////////
// NOTE: These stats will be directly modified by the player upon certain level-ups
// they probably wont be these base numbers in the end
POW = 10 // Power: Damage dealt
END = 10 // Endurance: Health regen, Energy regen
DEF = 10 // Defense: Health, burst damage reduction
SPD = 10 // Speed: Movement speed, cooldown reduction?
INT = 10 // Intelligence: Effect chance, effect power
RES = 10 // Resistance: Effect resistance, damage over time reduction

//////////// -OFFENSIVE STATS- /////////////
// POW & INT will affect each spell differently

cdReduc = 100/(100+(SPD/2)) // duration of spell cooldowns

//////////// -DEFENSIVE STATS- ////////////
MaxHP     = 80+(DEF*2)
HP        = MaxHP
MaxMP     = 100
MP        = MaxMP
hpRegen   = END*.025/room_speed // Rate of health recovery
mpRegen = END*.1/room_speed   // Rate of mana recovery
dmgReduc  = 100/(100+DEF)       // % of damage received
dotReduc  = 100/(100+RES)       // % of dot damage recieved, % of effect duration reduction
effRes    = 100/(100+(RES/2))   // % chance of ignoring successful effect

Status    = 0 // State. We'll have to decide what numbers mean what (1 = Slowed, 2 = Stunned, etc)

////////////// -MOVEMENT STATS- //////////////
pSpeed = 0
turnSpeed = 10 + (SPD*.1)
maxSpeed = 5 + (SPD*.15)
reducedSpeed = maxSpeed*.333
accel = .5+((SPD-10)*.05)
if(accel > maxSpeed)
    {accel = maxSpeed}

////////////// -ELEMENT SETUP- //////////////
spellType = true // type of spell to cast (true or 1 = primary, false or 0 = secondary)

shot = false
ballCount = 0
maxballCount = 5
aBallCount = 0
maxaBallCount = 40

rockballCD = room_speed*1.5
fireballCD = room_speed*3
airballCD = room_speed*2

firepoolCD = room_speed*.8
waterpoolCD  = room_speed*2

canShoot[Fire,0]     = true
canShoot[Fire,Air]   = true
canShoot[Fire,Earth] = true

canShoot[Water,0]    = true
canShoot[Water,Fire] = true

setTimer = true

////////////// -ANIMATION- //////////////
walkAnim = sprPlayerWalk
idleAnim = sprPlayerIdle

playerAttacking = false
earthQuake = false;



movePath = path_add();
