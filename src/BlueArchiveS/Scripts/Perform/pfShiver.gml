pfX = sin(pfCycle) * pfAmp

pfCycle += 1

if pfStage = 0 {
    pfAmp = approach(pfAmp, 5, .15)
    if pfAmp = 5
        pfStage = 1
}

if pfStage = 1 {
    pfAmp = approach(pfAmp, 0, .15)
    if pfAmp = 0
        pfNone()
}
