if (y >= room_height)
{
    gravity = 0;
    vspeed = 0;
    
    y = room_height;
}

if(hp == 0 && !isDying)
{
    kill();
}