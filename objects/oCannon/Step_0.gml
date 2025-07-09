angle = point_direction(x, y, mouse_x, mouse_y);

if(angle >= minAngle && angle <= maxAngle)
{
    image_angle = angle;
}

if(ammo != noone && angle >= minAngle && angle <= maxAngle)
{
    var barrelEnd = get_point_b_coordinates(x, y, barrelLength, angle);
    ammo.x = barrelEnd.x;
    ammo.y = barrelEnd.y;
}