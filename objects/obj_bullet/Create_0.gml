image_index = irandom(1);
image_speed = 0;
range = 100; //Frames bullet will be live //Bullet Distance = range * spd

//shot variation code
dir = point_direction(x, y, obj_mouse_crosshair.x, obj_mouse_crosshair.y);
dir += irandom_range(-6, 6)

spd = 5

alarm[0] = range;
image_angle = dir;
direction = image_angle;
