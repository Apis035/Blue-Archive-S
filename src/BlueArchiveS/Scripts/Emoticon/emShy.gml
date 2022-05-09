if emCycle = 0 {
    emScaleX = 0
    emAlpha  = 1
}

draw_sprite_ext(sEmBaloon, 0, x-160, y, .7, .7, 0, c_white, emAlpha)
draw_sprite_ext(sEmShy, 0, x-230, y-70, emScaleX, emScaleX, emAngle, c_white, emAlpha)

emScaleX = lerp(emScaleX, .7, .05)

if emCycle = 20 {
    emCycle  = 0
    emStage += 1
}

if emStage mod 2
    emAngle = lerp(emAngle, 50, .01)
else
    emAngle = lerp(emAngle, -50, .01)

if emStage > 4 {
    emAlpha = approach(emAlpha, 0, 0.15)
    if emAlpha = 0
        emReset()
}
