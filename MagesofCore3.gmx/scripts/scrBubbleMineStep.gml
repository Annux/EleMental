timer += 1/room_speed;

if (timer >= timeMin)
    {canDetonate = true;}

if (timer >= timeMax)
    {Detonating = true;} 
  
if (Detonating = true)
    {image_speed = 0.5;}

if (image_index > 3)
    {instance_destroy();}
