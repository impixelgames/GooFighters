switch (mPos) {
    case 0: {
        // start
        room_goto_next();
        break;
    }
    case 1: {
        // exit
        game_end();
        break;
    }
    default: {
        // Do nothing
        break;
    }
}
