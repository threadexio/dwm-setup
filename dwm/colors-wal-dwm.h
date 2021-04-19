static const char norm_fg[] = "#bfb3bc";
static const char norm_bg[] = "#090513";
static const char norm_border[] = "#857d83";

static const char sel_fg[] = "#bfb3bc";
static const char sel_bg[] = "#B94F46";
static const char sel_border[] = "#bfb3bc";

static const char urg_fg[] = "#bfb3bc";
static const char urg_bg[] = "#6B5469";
static const char urg_border[] = "#6B5469";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
//    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
