shotActive = false;

reset = function ()
{
    shotActive = false;
    camera_set_view_target(view_camera[0], oBarrelCam);
    oCannon.ammo = oCannon.reload();
}

startTimer = function ()
{
    alarm[0] = game_get_speed(gamespeed_fps) * 2;
}

