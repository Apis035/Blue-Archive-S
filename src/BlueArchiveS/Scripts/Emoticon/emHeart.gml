if emCycle = 0 {
    emScaleX = 0
    emAngle  = -20
    emAlpha  = 1
}

draw_sprite_ext(sEmBaloon, 0, x-160, y, .7, .7, 0, c_white, emAlpha)
draw_sprite_ext(sEmHeart,  0, x-233, y-65, emScaleX, emScaleX, emAngle, c_white, emAlpha)

emScaleX = lerp(emScaleX, .8, .1)
emAngle  = lerp(emAngle, 0, .02)

if emCycle > 70 {
    emAlpha = approach(emAlpha, 0, 0.15)
    if emAlpha = 0
        emNone()
}
