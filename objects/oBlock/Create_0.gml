originalGravity = 0.5;
weigth = 1;
hp = 1;

botBlock = noone;
rightBlock = noone;
leftBlock = noone;

onFloor = false;
isDying = false;
isCamera = false;

dangerousSpeed = 20;

kill = function ()
{
    speed = 0;
    direction = 0;
    
    isDying = true;
    
    sprite_index = sprExplosion;
    mask_index = maskNoCollision;
    
    size = 1.2;
    image_xscale = size;
    image_yscale = size;
    
    image_index = 0;
}

