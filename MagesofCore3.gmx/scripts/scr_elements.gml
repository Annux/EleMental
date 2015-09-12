Fire            = 1
Water           = 2
Earth           = 3
Air             = 4
//--------------//
Dragonbreath    = 5
Meteor          = 6
Elecduocity     = 7
Mud             = 8
Cloud           = 9
Sand            = 10


////////////// ELEMENT MIXTURES//////////////
// Fire + Fire = Plasma //
// if(global.priElem = Fire) && (global.secElem = Fire)
//    {duoElem = Plasma}
    
// Fire + Waduo = Dragonbreath //
if((global.priElem = Fire || global.priElem = Water) && (global.secElem = Fire || global.secElem = Water))
    {duoElem = Dragonbreath}
    
// Fire + Earth = Meteor //
else if((global.priElem = Fire || global.priElem = Earth) && (global.secElem = Fire || global.secElem = Earth))
    {duoElem = Meteor}
    
// Fire + Air = Elecduocity //
else if((global.priElem = Fire || global.priElem = Air) && (global.secElem = Fire || global.secElem = Air))
    {duoElem = Elecduocity}
    
// Waduo + Waduo = Frost //
// else if(global.priElem = Waduo) && (global.secElem = Waduo)
//    {duoElem = Frost}
    
// Waduo + Earth = Mud //
else if((global.priElem = Water || global.priElem = Earth) && (global.secElem = Water || global.secElem = Earth))
    {duoElem = Mud}
    
// Waduo + Air = Cloud //
else if((global.priElem = Water || global.priElem = Air) && (global.secElem = Water || global.secElem = Air))
    {duoElem = Cloud}
    
// Earth + Earth = Iron //
// else if(global.priElem = Earth) && (global.secElem = Earth)
//    {duoElem = Dragonbreath}
    
// Earth + Air = Sand //
else if((global.priElem = Earth || global.priElem = Air) && (global.secElem = Earth || global.secElem = Air))
    {duoElem = Sand}
    
// Air + Air = Energy //
// else if(global.priElem = Air) && (global.secElem = Air)
//    {duoElem = Energy}