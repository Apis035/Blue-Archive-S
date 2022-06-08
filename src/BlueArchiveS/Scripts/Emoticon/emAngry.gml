draw_sprite_ext(sEmAggro, 0, x-100, y-80, emScaleX, emScaleX, 0, c_white, emAlpha)
draw_sprite_ext(sEmAggro, 0, x-100, y-80, emScaleX, emScaleX, 120, c_white, emAlpha)
draw_sprite_ext(sEmAggro, 0, x-100, y-80, emScaleX, emScaleX, 240, c_white, emAlpha)

emScaleX = lerp(emScaleX, .6, .2)

if emCycle > 80 {
    emAlpha = approach(emAlpha, 0, .2)
    if emAlpha = 0
        emNone()
} else {
    emAlpha = approach(emAlpha, 1, .2)
}
