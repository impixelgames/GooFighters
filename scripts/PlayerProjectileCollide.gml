var incomingProjectile = argument0;
// var hitSound = argument1;
//audio_play_sound

with incomingProjectile {
    instance_destroy();
}

// Create another copy of self at random location, destroy current self
instance_create(random(room_width), random(room_height), object_get_name(object_index));
instance_destroy();
