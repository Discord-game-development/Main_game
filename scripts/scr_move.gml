//player input
key_right = keyboard_check(ord("D"));
key_left = -keyboard_check(ord("A"));
key_up = -keyboard_check(ord("W"));
key_down = keyboard_check(ord("S"));

//react to input
move = key_left + key_right;
moveup = key_up + key_down
hsp = move * movespeed;
vsp = moveup * movespeed;

//get direction
var dir = point_direction(0, 0, move, moveup);

//get the length
if(move == 0 && moveup == 0)
{   
    len = 0;
}
else 
{
    len = movespeed;
}

//collisions start
if(hsp != 0)
{
    if !place_free(x+hsp, y )
    {
        if hsp > 0 move_contact_solid(0, hsp);
        if hsp < 0 move_contact_solid(180, -hsp);
        hsp = 0;
    }
}

if(vsp != 0)
{
    if !place_free(x + hsp, y + vsp )
    {
        if vsp > 0 move_contact_solid(270, vsp);
        if vsp < 0 move_contact_solid(90, -vsp);
        vsp = 0;
    }
}

update_player_sprite();

//move
x += hsp;
y += vsp;



