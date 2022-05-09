if emCycle = 0 and emStage = 0
    emAlpha = 1

draw_sprite_ext(sEmAction, 0, x-100, y-40, .55, .55, 10, c_white, emAlpha)
draw_sprite_ext(sEmAction, 0, x-100, y-60, .7, .7, -14, c_white, emAlpha)
draw_sprite_ext(sEmAction, 0, x-100, y-82, .48, .48, -36, c_white, emAlpha)

if emCycle = 6 {
    emCycle  = 0
    emStage += 1
}

if emStage < 3
    emAlpha = !(emStage mod 2)

if emStage = 8 {
    emAlpha = approach(emAlpha, 0, .2)
    if emAlpha = 0
        emReset()
}
