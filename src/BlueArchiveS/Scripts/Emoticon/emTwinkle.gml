if emCycle = 0 and emStage = 0 {
    emAlpha  = 0
    emScaleX = .2
    emScaleY = 0
    emScaleZ = .2
}

draw_sprite_ext(sEmTwinkle, 0, x-123, y-95, .2 + emScaleX, .2 + emScaleX, 0, c_white, emAlpha)
draw_sprite_ext(sEmTwinkle, 0, x-155, y-60, .3 + emScaleY, .3 + emScaleY, 0, c_white, emAlpha)
draw_sprite_ext(sEmTwinkle, 0, x-110, y-40, .1 + emScaleZ, .1 + emScaleZ, 0, c_white, emAlpha)

if emCycle = 20 {
    emCycle  = 0
    emStage += 1
}

if emAlpha < 1 and emStage < 10
    emAlpha = approach(emAlpha, 1, .15)

if emStage mod 2 {
    emScaleX = lerp(emScaleX, .4, .01)
    emScaleY = lerp(emScaleY, 0, .01)
    emScaleZ = lerp(emScaleZ, .4, .02)
} else {
    emScaleX = lerp(emScaleX, 0, .01)
    emScaleY = lerp(emScaleY, .4, .01)
    emScaleZ = lerp(emScaleZ, 0, .02)
}

if emStage > 10 {
    emAlpha = approach(emAlpha, 0, .15)
    if emAlpha = 0
        emNone()
}
