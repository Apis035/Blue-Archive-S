if emCycle = 0 {
    emAlpha  = 1
    emScaleX = 0
    emScaleY = 0
}

draw_sprite_ext(sEmExclamation1, 0, x-140 - emX, y-60, emScaleX, emScaleX, 0, c_white, emAlpha)
draw_sprite_ext(sEmQuestion1,    0, x-100 - emY, y-60, emScaleY, emScaleY, 0, c_white, emAlpha)

emScaleX = lerp(emScaleX, .7, .2)
emX      = lerp(emX, 40, .1)

if emCycle > 3 {
    emScaleY = lerp(emScaleY, .7, .2)
    emY      = lerp(emY, 40, .1)
}

if emCycle > 80 {
    emAlpha = approach(emAlpha, 0, .2)
    if emAlpha = 0
        emNone()
}
