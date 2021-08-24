// Modify this file to change what commands output to your statusbar, and
// recompile using the make command.
static const Block blocks[] = {
    /*Icon*/ /*Command*/ /*Update Interval*/ /*Update Signal*/
    {"", "xkb-switch | xargs -I {} echo \"|{}|\"", 1, 0},
    {"", "spotify-blk", 10, 0},
    {"", "memory", 10, 0},
    {"", "moonphase", 18000, 0},
    {"", "weather", 18000, 0},
    {"", "mailbox", 180, 0},
    {"", "price ada Cardano ₳", 120, 0},
    {"", "price xrp Ripple X", 120, 0},
    {"", "nettraf", 1, 0},
    {"", "volume", 0, 10},
    {"", "battery", 5, 0},
    {"", "clock", 60, 0},
    {"", "internet", 5, 0},
};

// Sets delimiter between status commands. NULL character ('\0') means no
// delimiter.
static char *delim = " ";

// Have dwmblocks automatically recompile and run when you edit this file in
// vim with the following line in your vimrc/init.vim:

// autocmd BufWritePost ~/.local/src/dwmblocks/config.h !cd
// ~/.local/src/dwmblocks/; sudo make install && { killall -q dwmblocks;setsid
// dwmblocks & }
