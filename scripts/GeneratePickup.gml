// Randomly drop pickups
var enemyX = argument0;
var enemyY = argument1;

// Array containing all weapon types
pickupTypes[0] = oShotgun;
pickupTypes[1] = oExplosiveLauncher;

var hasDropped = false;

for (var i = 0; i < array_length_1d(pickupTypes); i++) {
    var chanceDrop = random(100);
    if (hasDropped = false && chanceDrop < pickupTypes[i].dropChance) {
        instance_create(enemyX, enemyY, pickupTypes[i]);
        hasDropped = true;
        break;
    }        
}
