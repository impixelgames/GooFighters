// Enemies collide with other enemies

var otherEnemies = instance_place(self.x, self.y, oEnemyParent);
// x and y relative to current object

if (instance_exists(otherEnemies) 
    && isCollideCount < 0
    && otherEnemies != oExplodingEnemyChunk
    && otherEnemies != oPurpleGib) {
    hspeed *= -1;
    vspeed *= -1;
    isCollideCount = 200;
}

isCollideCount--;
