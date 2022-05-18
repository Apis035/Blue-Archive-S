draw_sprite_ext(sEmSweat1, 0, x-100, y-190 + emX, .7, .7, 0, c_white, emAlpha)
draw_sprite_ext(sEmSweat2, 0, x-70,  y-230 + emY, .7, .7, 0, c_white, emAlpha)

emX = lerp(emX, 100, 0.1)
emY = lerp(emY, 120, 0.1)

if emCycle < 6
    emAlpha = approach(emAlpha, 1, 0.2)

if emCycle > 70 {
    emAlpha = approach(emAlpha, 0, 0.2)
    if emAlpha = 0
        emNone()
}
