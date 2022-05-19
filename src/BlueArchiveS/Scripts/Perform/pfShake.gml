if pfCycle = 0
    pfAmp = 50

pfX = sin(pfCycle) * pfAmp

pfCycle += .8
pfAmp    = lerp(pfAmp, 0, .15)

if pfAmp < 1
    pfNone()
