//Game configuration
global.DisplayWidth   = display_get_width()
global.DisplayHeight  = display_get_height()
global.BaseResolution = 1080
global.GameScale      = global.BaseResolution / 720
/*
    Base resolutions:
    - 2560 x 1440
    - 1920 x 1080
    - 1366 x 768
    - 1280 x 720
*/

global.GameTitle   = "Blue Archive S"
global.InfoMessage = "Apis035#v0.0.3 / 06.08.2022"

global.Scene = ""

global.BgmVolume = .4
global.SfxVolume = 1

global.TextboxAlpha = .6
global.TextboxSpeed = .5

//I'm setting windows' scaling to 125%, so game maker font also got scaled to 125%.
//Will use this later to render the font natively with base resoution so it doesn't blur.
/*
var scale;
scale = 1.25

if scale = 1 {
    global.FontNS16B = font_add('Noto Sans', 20, 1, 0, 32, 127)
    global.FontNS20  = font_add('Noto Sans', 26, 0, 0, 32, 127)
    global.FontNS26B = font_add('Noto Sans', 32, 1, 0, 32, 127)
    global.FontNS30B = font_add('Noto Sans', 36, 1, 0, 32, 127)
    global.FontNS40B = font_add('Noto Sans', 56, 1, 0, 32, 127)
} else if scale = 1.25 {
    global.FontNS16B = font_add('Noto Sans', 16, 1, 0, 32, 127)
    global.FontNS20  = font_add('Noto Sans', 20, 0, 0, 32, 127)
    global.FontNS26B = font_add('Noto Sans', 26, 1, 0, 32, 127)
    global.FontNS30B = font_add('Noto Sans', 30, 1, 0, 32, 127)
    global.FontNS40B = font_add('Noto Sans', 40, 1, 0, 32, 127)
}
*/
