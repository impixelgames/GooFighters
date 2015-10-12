/*
* Fires a bullets from the given gun
* USAGE: FireGun(oPistolBullet);
*/

var gunType = argument0;

// Pistol
if (gunType == oPistolBullet) {
    // spawn bullet
    myBullet = instance_create(x, y, gunType);
    // play sound after spawning bullet so the sound exists (in create function)
    audio_play_sound(gunType.fireSound, 1, false);
    myBullet.direction = image_angle;
    myBullet.speed = gunType.bulletSpeed;
    myBullet.image_angle = image_angle;
} 

// Shotgun
if (gunType == oShotgunBullet) {
    // introduce spread
    var shotgunAngle = image_angle - 30;
    for (var i = 0; i < 6; i++) {
        myBullet = instance_create(x, y, gunType);
        
        audio_play_sound(gunType.fireSound, 1, false);
        myBullet.direction = shotgunAngle;
        myBullet.speed = gunType.bulletSpeed;
        myBullet.image_angle = image_angle;
        shotgunAngle += 10;
    }
}

// gun recoil/kick
var kickDirection = image_angle + 180; // opposite to player dir
x += lengthdir_x(gunType.bulletKick, kickDirection);
y += lengthdir_y(gunType.bulletKick, kickDirection);    
