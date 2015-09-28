/*
* Fires a bullets from the given gun
* USAGE: FireGun(oPistolBullet, aPistolAudio);
*/

var gunObject = argument0;
//var gunAudio = argument1;

//audio_play_sound(gunAudio, 1, false);

// spawn bullet
myBullet = instance_create(x, y, gunObject);
myBullet.direction = image_angle;
myBullet.speed = gunObject.bulletSpeed;
myBullet.image_angle = image_angle;

// gun recoil/kick
var bulletKick = 300 / room_speed;
var kickDirection = image_angle + 180; // opposite to player dir
x += lengthdir_x(bulletKick, kickDirection);
y += lengthdir_y(bulletKick, kickDirection);    
