if emCycle = 0 and emStage = 0
    emAlpha = 1

draw_sprite_ext(sEmBaloon, 0, x-160, y, .7, .7, 0, c_white, emAlpha)
for (i=0; i<min(emStage+1, 3); i+=1)
    draw_sprite_ext(sEmIdea, 0, x-290 + (i*45), y-80, .7, .7, 0, c_white, emAlpha)

if emCycle = 35 {
    emCycle  = 0
    emStage += 1
}

if emStage = 3
    emAlpha = approach(emAlpha, 0, 0.15)

if emStage = 4
    emNone()
