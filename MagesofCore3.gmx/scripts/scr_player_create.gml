//////////// -----BASE STATS----- ////////////
// NOTE: These stats will be directly modified by the player upon certain level-ups
// they probably wont be these base numbers in the end
POW = objOverworldController.POW // Power: Damage dealt
END = objOverworldController.END // Endurance: Health regen, Energy regen
DEF = objOverworldController.DEF // Defense: Health, burst damage reduction
SPD = objOverworldController.SPD // Speed: Movement speed, cooldown reduction?
INT = objOverworldController.INT // Intelligence: Effect chance, effect power
RES = objOverworldController.RES // Resistance: Effect resistance, damage over time reduction

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
LevelComplete = false
canMove = true

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
maxballCount = 8
aBallCount = 0
maxaBallCount = 40

rockballCD = room_speed*1.5
fireballCD = room_speed*2.5
airballCD = room_speed*1.5

firepoolCD = room_speed*.8
waterpoolCD  = room_speed*2

earthquakeCD = room_speed*2
enemyStunCD = INT*.1
StunCD = 0
Stunned = false

canShoot[Fire,0]     = true
canShoot[Fire,Air]   = true
canShoot[Fire,Earth] = true

canShoot[Water,0]    = true
canShoot[Water,Fire] = true

canShoot[Earth,0] = true

setTimer = true

////////////// -ANIMATION- //////////////
walkAnim = sprPlayerWalk
idleAnim = sprPlayerIdle

playerAttacking = false
earthQuake = false;

//indicates whether or not the player is dying, see player step
deathAnim = 0;
global.DebugMode = false
movePath = path_add();

//these allow the player to switch between spells; more in player input//
curElem = global.priElem;
heldElem = global.secElem;
limboElem = 0;
Damage = 0

//this is so Levelup Overwatch can check the player's individual primary element//
priElem = global.priElem;

//this is how the boss spawner knows when to spawn the boss//
bossSpawnReady = 0;
//this stops the level complete notification from spawning using player step//
vicSpawned = 0;// Damage Scripts
fireDamage  = 0
earthDamage = 0
waterDamage = 0
airDamage   = 0

if(priElem = Fire)
{
    fireRatio  = .8
    earthRatio = 1
    waterRatio = 1.33
    airRatio   = 1
}
else if(priElem = Water)
{
    fireRatio  = 1.25
    earthRatio = 1
    waterRatio = .8
    airRatio   = 1
}
else if(priElem = Earth)
{
    fireRatio  = .9
    earthRatio = .75
    waterRatio = .9
    airRatio   = 1.25
}
else if(priElem = Air)
{
    fireRatio  = 1
    earthRatio = 1.5
    waterRatio = 1
    airRatio   = .6
}
