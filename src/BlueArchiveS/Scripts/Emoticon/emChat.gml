if emCycle = 0 and emStage = 0
    emScaleX = 0

draw_sprite_ext(sEmChat, 0, x-100, y+40, emScaleX, emScaleX, emAngle, c_white, emAlpha)

emScaleX = lerp(emScaleX, .6, .2)

if emCycle = 15 {
    emCycle  = 0
    emStage += 1
}

if emStage mod 2
    emAngle = lerp(emAngle, 80, .02)
else
    emAngle = lerp(emAngle, -80, .02)

if emStage > 4 {
    emAlpha = approach(emAlpha, 0, 0.15)
    if emAlpha = 0
        emNone()
} else {
    emAlpha = approach(emAlpha, 1, .2)
}
