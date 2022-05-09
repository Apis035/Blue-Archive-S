if emCycle = 0 {
    emScaleX = 0
    emAlpha  = 1
}

draw_sprite_ext(sEmExclamation2, 0, x - 120, y - emY, emScaleX, emScaleX, 0, c_white, emAlpha)

emY      = lerp(emY, 60, .5)
emScaleX = lerp(emScaleX, .65, .4)

if emCycle > 80 {
    emAlpha = approach(emAlpha, 0, 0.2)
    if emAlpha = 0
        emReset()
}
