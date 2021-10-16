// Modify this file to change what commands output to your statusbar, and
// recompile using the make command.
static const Block blocks[] = {
    /*Icon*/ /*Command*/ /*Update Interval*/ /*Update Signal*/
    {"", "xkb-switch | xargs -I {} echo \"|{}|\"", 1, 23},
    {"", "spotify-blk", 10, 22},
    {"", "memory", 10, 11},
    {"", "disk /", 10, 21},
    {"", "disk /home", 10, 20},
    {"", "moonphase", 18000, 18},
    {"", "weather", 18000, 19},
    {"", "mailbox", 180, 13},
    {"", "price ada Cardano ₳", 120, 14},
    {"", "price xrp Ripple X", 120, 15},
    {"", "nettraf", 1, 24},
    {"", "volume", 0, 10},
    {"", "battery", 5, 3},
    {"", "clock", 60, 1},
    {"", "internet", 5, 4},
};

// Sets delimiter between status commands. NULL character ('\0') means no
// delimiter.
static char *delim = " ";

// Have dwmblocks automatically recompile and run when you edit this file in
// vim with the following line in your vimrc/init.vim:

// autocmd BufWritePost ~/.local/src/dwmblocks/config.h !cd
// ~/.local/src/dwmblocks/; sudo make install && { killall -q dwmblocks;setsid
// dwmblocks & }
