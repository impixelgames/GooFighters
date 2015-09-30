/*
* Fires a bullets from the given gun
* USAGE: FireGun(oPistolBullet);
*/

var gunType = argument0;

// spawn bullet
myBullet = instance_create(x, y, gunType);
// play sound after spawning bullet so the sound exists (in create function)
audio_play_sound(gunType.fireSound, 1, false);
myBullet.direction = image_angle;
myBullet.speed = gunType.bulletSpeed;
myBullet.image_angle = image_angle;

// gun recoil/kick
var kickDirection = image_angle + 180; // opposite to player dir
x += lengthdir_x(gunType.bulletKick, kickDirection);
y += lengthdir_y(gunType.bulletKick, kickDirection);    
