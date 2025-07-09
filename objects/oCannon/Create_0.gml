//show_debug_overlay(true);

minAngle = 0;
maxAngle = 90;

angle = 0;

barrelLength = 480;

ammo = noone;

reload = function ()
{
    oGameController.alarm[0] = -1;
    
    if(ammo != noone)
    {
        instance_destroy(ammo);
    }
    
    var barrelEnd = get_point_b_coordinates(x, y, barrelLength, angle);
    return instance_create_layer(barrelEnd.x, barrelEnd.y, "Instances", oGoblin);
}

shoot = function ()
{
    audio_play_sound(sndCannonShoot, 100, false);
    ammo.shoot();
}

ammo = reload();