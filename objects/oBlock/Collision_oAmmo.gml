hspeed = other.speed / weigth;
direction = other.direction;

camera_set_view_target(view_camera[0], self);
isCamera = true;

other.kill(false);