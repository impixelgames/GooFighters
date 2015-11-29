/*
Keeps the mouse from leaving the screen.

*/

if (mouse_x < view_xview) { window_mouse_set(view_xview, mouse_y); }
if (mouse_x > view_wview) {  }
if (mouse_y < view_yview) {  }
if (mouse_y < view_hview) {  }
