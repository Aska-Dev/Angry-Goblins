size = 0.3;

minAngle = 0;
maxAngle = 90;

angle = point_direction(x, y, mouse_x, mouse_y);

image_xscale = size;
image_yscale = size;

isFlying = false;
onGround = false;
isDying = false;

direction = angle;
image_angle = angle;

kill = function ()
{
    speed = 0;
    direction = 0;
    
    isDying = true;
    isFlying = false;
    
    sprite_index = sprExplosion;
    mask_index = maskNoCollision;
    
    size = 1.2;
    image_xscale = size;
    image_yscale = size;
    
    image_index = 0;
}