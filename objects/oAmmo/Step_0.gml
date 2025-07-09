if(!isFlying)
{
    angle = point_direction(x, y, mouse_x, mouse_y);
    
    if(angle >= minAngle && angle <= maxAngle)
    {
        direction = angle;
    }
}

y = min(y, room_height - 5);

if(!onGround)
{
    image_angle = direction;
}
else
{
    image_angle = 25;
}

if(isFlying && onGround)
{
    speed -= 1
}

if(y >= room_height - 50)
{
    onGround = true;
    speed -= 0.7;
}

if(isFlying && speed <= 0)
{
    //kill();
}