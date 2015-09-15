objToTurn = argument0;
target =    argument1;
turnSpeed = argument2;
accuracy =  argument3;  

targetDir = point_direction(objToTurn.x, objToTurn.y, target.x, target.y);
facingDir = objToTurn.direction

facingMinusTarget = facingDir - targetDir;
angleDiff = facingMinusTarget;

if(abs(facingMinusTarget) > 180)
{
    if(facingDir > targetDir)
    {
        angleDiff = -1 * ((360 - facingDir) + targetDir);
    }
    else
    {
        angleDiff = (360 - targetDir) + facingDir;
    }
}

if(angleDiff > accuracy)
{
    objToTurn.direction -= turnSpeed //* room_speed;
}
else if(angleDiff < -accuracy)
{
    objToTurn.direction += turnSpeed //* room_speed;
}
else
{
   objToTurn.direction = targetDir 
}
