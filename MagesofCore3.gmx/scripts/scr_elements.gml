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



//TEMPORARY//TO BE REPLACED BY OVERLORD////TEMPORARY//TO BE REPLACED BY OVERLORD////TEMPORARY//TO BE REPLACED BY OVERLORD////TEMPORARY//TO BE REPLACED BY OVERLORD////TEMPORARY//TO BE REPLACED BY OVERLORD//
priElem = Water
secElem = Fire
curElem = priElem
//TEMPORARY//TO BE REPLACED BY OVERLORD////TEMPORARY//TO BE REPLACED BY OVERLORD////TEMPORARY//TO BE REPLACED BY OVERLORD////TEMPORARY//TO BE REPLACED BY OVERLORD////TEMPORARY//TO BE REPLACED BY OVERLORD//




////////////// ELEMENT MIXTURES//////////////
// Fire + Fire = Plasma //
// if(priElem = Fire) && (secElem = Fire)
//    {duoElem = Plasma}
    
// Fire + Waduo = Dragonbreath //
if((priElem = Fire || priElem = Water) && (secElem = Fire || secElem = Water))
    {duoElem = Dragonbreath}
    
// Fire + Earth = Meteor //
else if((priElem = Fire || priElem = Earth) && (secElem = Fire || secElem = Earth))
    {duoElem = Meteor}
    
// Fire + Air = Elecduocity //
else if((priElem = Fire || priElem = Air) && (secElem = Fire || secElem = Air))
    {duoElem = Elecduocity}
    
// Waduo + Waduo = Frost //
// else if(priElem = Waduo) && (secElem = Waduo)
//    {duoElem = Frost}
    
// Waduo + Earth = Mud //
else if((priElem = Water || priElem = Earth) && (secElem = Water || secElem = Earth))
    {duoElem = Mud}
    
// Waduo + Air = Cloud //
else if((priElem = Water || priElem = Air) && (secElem = Water || secElem = Air))
    {duoElem = Cloud}
    
// Earth + Earth = Iron //
// else if(priElem = Earth) && (secElem = Earth)
//    {duoElem = Dragonbreath}
    
// Earth + Air = Sand //
else if((priElem = Earth || priElem = Air) && (secElem = Earth || secElem = Air))
    {duoElem = Sand}
    
// Air + Air = Energy //
// else if(priElem = Air) && (secElem = Air)
//    {duoElem = Energy}