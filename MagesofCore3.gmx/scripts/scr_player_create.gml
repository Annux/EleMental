//////////// -----BASE STATS----- ////////////
// NOTE: These stats will be directly modified by the player upon certain level-ups
// they probably wont be these base numbers in the end
POW = 10 // Power: Damage dealt
END = 10 // Endurance: Health regen, Energy regen
DEF = 10 // Defense: Health, burst damage reduction
SP  = 10 // Speed: Movement speed, (cooldown reduction?)
INT = 10 // Intelligence: Effect chance, effect power
RES = 10 // Resistance: Effect resistance, damage over time reduction

//////////// -OFFENSIVE STATS- /////////////

//////////// -DEFENSIVE STATS- ////////////
Health    = 100+DEF
dmgReduc  = 100/(100*DEF) // % of damage received
dotReduc  = 100/(100*RES) // % of dot damage recieved, % of effect duration reduced, % likeliness spell will work

Status    = 0           // State. We'll have to decide what numbers mean what (1 = Slowed, 2 = Stunned, etc)

//////////// -MOVEMENT STATS- ////////////
turnSpeed = 10
maxSpeed = 8
reducedSpeed = 4
accel = 1

////////////// -ELEMENT SETUP- //////////////
spellType = true // type of spell to cast (true or 1 = primary, false or 0 = secondary)
curElem = 1
