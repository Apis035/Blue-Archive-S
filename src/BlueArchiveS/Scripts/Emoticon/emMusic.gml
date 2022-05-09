if emCycle = 0 and emStage = 0
    emScaleX = .4

draw_sprite_ext(sEmNote, 0, x - 40 - emX, y - 80 - emY, emScaleX, emScaleX, emAngle, c_white, emAlpha)

emX = lerp(emX, 140, .03)
emY = lerp(emY, 10, .01)

emScaleX = lerp(emScaleX, .8, .05)

if emCycle = 15 {
    emCycle  = 0
    emStage += 1
}

if emStage mod 2 and emStage < 3
    emAngle = lerp(emAngle, -50, .01)
else
    emAngle = lerp(emAngle, 50, .01)

if emStage < 1
    emAlpha = approach(emAlpha, 1, 0.2)

if emStage > 3 {
    emAlpha = approach(emAlpha, 0, 0.05)
    if emAlpha = 0
        emReset()
}
