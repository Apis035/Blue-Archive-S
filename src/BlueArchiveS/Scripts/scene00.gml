a = new("")
a.name = "Arona"

lb()
    bg("BG MainOffice") bfi() mus("theme 10", 1)
    tit("Episode 1", "Welcome to the Foreclosure Task Force!")
    loc("Schale Executive Office")
    
    cfi() tfi() sfx("SE Radio 01") cem(a, em_twinkle)
        say(a, "Good morning, Sensei!")
        say(a, "A lot of people are starting to talk about Schale, and we've received letters from other students asking for help.")
    cem(a, em_music)
        say(a, "That's a great sign, and it means there's a lot of work for us to do!")
        say(a, "Um, but...there's this one letter we got.")
        say(a, "I think you should take a look.")
    ch("Read the letter.")
    sfx("kertas entahlah") wai(.5) sfb(1) tfo()
    bg("BG CommitteeRoom Night Blur") sfn(1) wai(1)
