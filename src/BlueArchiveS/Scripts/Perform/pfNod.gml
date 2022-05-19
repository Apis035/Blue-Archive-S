if pfStage = 0 {
    pfY = lerp(pfY, 80, 0.18)
    if pfY > 79
        pfStage = 1
}

if pfStage = 1 {
    pfCycle += 1
    if pfCycle = 10
        pfStage = 2
}

if pfStage = 2 {
    pfY = lerp(pfY, 0, 0.18)
    if pfY = 0
        pfNone()
}
