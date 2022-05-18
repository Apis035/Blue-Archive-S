globalvar emSfx;
var i;

//Sprites

//Backgrounds

//Emoticon sound effect
log('Loading internal sound effects...')
emSfx[em_angry]     = sinBassSampleLoad(sfxPath + 'SFX_Emoticon_Motion_Angry.wav')
emSfx[em_chat]      = sinBassSampleLoad(sfxPath + 'SFX_Emoticon_Motion_Chat.wav')
emSfx[em_dot]       = sinBassSampleLoad(sfxPath + 'SFX_Emoticon_Motion_Dot.wav')
emSfx[em_exclaim]   = sinBassSampleLoad(sfxPath + 'SFX_Emoticon_Motion_Exclaim.wav')
emSfx[em_heart]     = sinBassSampleLoad(sfxPath + 'SFX_Emoticon_Motion_Heart.wav')
emSfx[em_music]     = sinBassSampleLoad(sfxPath + 'SFX_Emoticon_Motion_Music.wav')
emSfx[em_question]  = sinBassSampleLoad(sfxPath + 'SFX_Emoticon_Motion_Question.wav')
emSfx[em_respond]   = sinBassSampleLoad(sfxPath + 'SFX_Emoticon_Motion_Respond.wav')
emSfx[em_shy]       = sinBassSampleLoad(sfxPath + 'SFX_Emoticon_Motion_Shy.wav')
emSfx[em_surprise]  = sinBassSampleLoad(sfxPath + 'SFX_Emoticon_Motion_Surprise.wav')
emSfx[em_sweat]     = sinBassSampleLoad(sfxPath + 'SFX_Emoticon_Motion_Sweat.wav')
emSfx[em_twinkle]   = sinBassSampleLoad(sfxPath + 'SFX_Emoticon_Motion_Twinkle.wav')
emSfx[em_upset]     = sinBassSampleLoad(sfxPath + 'SFX_Emoticon_Motion_Upset.wav')

for (i=1; i<13; i+=1)
    sinBassSampleSetVolume(emSfx[i], global.SfxVolume)
