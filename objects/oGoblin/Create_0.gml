event_inherited();

shoot = function ()
{
    camera_set_view_target(view_camera[0], self);

    sprite_index = sprGoblin;
    
    speed = 50;
    
    isFlying = true;
    
    // When gravity should start affecting the ammo
    alarm[0] = game_get_speed(gamespeed_fps) * 1;
    
    oGameController.shotActive = true;
}