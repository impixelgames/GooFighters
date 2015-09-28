/*
* Checks if the current object collides with the boundaries of the game window.
* USAGE: CheckRoomCollide();
*/

if (self.x < 0) { self.x = 0; }
if (self.x > room_width) { self.x = room_width; }
if (self.y < 0) { self.y = 0; }
if (self.y > room_height) { self.y = room_height; }
