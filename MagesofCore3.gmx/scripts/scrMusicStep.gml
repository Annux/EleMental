roomActive = room;
switch(roomActive)
{
    case MainMenu:
    if (!audio_is_playing(MenuSound))
    {
        audio_play_sound(MenuSound, 1, true);
    }
    break;
    
    case OverworldMap:
    if (!audio_is_playing(OverworldSound))
    {
        audio_play_sound(OverworldSound, 1, true);
    }
    break;
    
    case Level1:
    if (!audio_is_playing(LoopIntro_01))
    {
        soundPlaying += 1;
    }
    if (soundPlaying = 1)&&(!audio_is_playing(LoopIntro_01))
    {
        audio_play_sound(LoopIntro_01, 1, false);
    }
    if (soundPlaying = 2)&&(!audio_is_playing(Loop_01))
    {
        audio_play_sound(Loop_01, 1, true);
    }
    break;
}
