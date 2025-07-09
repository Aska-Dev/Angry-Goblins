var rightX = x + sprite_width / 2;
var leftX = x - sprite_width / 2;

botBlock = collision_rectangle(leftX, y, rightX, y + 1, oBlock, true, true);
rightBlock = collision_rectangle(rightX, y - sprite_height / 4, rightX + 1, y - sprite_height + sprite_height / 4, oBlock, true, true);
onFloor = y >= room_height;

if(botBlock != noone || onFloor)
{
    if(vspeed >= dangerousSpeed)
    {
        hp = max(0, hp - 1);
    }
}

if(rightBlock != noone)
{
    if(hspeed >= dangerousSpeed)
    {
        hp = max(0, hp - 1);
    }
} 

if (botBlock != noone)
{
    gravity = 0;
    vspeed = 0;
}
else
{
    gravity = originalGravity;
}
 

if(rightBlock != noone)
{
    if(sprite_width / 8 > hspeed)
    {
        rightBlock.x += sprite_width / 8;
    }
    
    rightBlock.x += hspeed;
    var newSpeed = hspeed / (2 * rightBlock.weigth);
    
    if(newSpeed >= rightBlock.dangerousSpeed)
    {
        rightBlock.hp = max(0, hp - 1);
    }
    
    hspeed = newSpeed;
    rightBlock.hspeed = newSpeed;
}

if(hspeed > 0)
{
    hspeed = max(0, hspeed - 1);
}