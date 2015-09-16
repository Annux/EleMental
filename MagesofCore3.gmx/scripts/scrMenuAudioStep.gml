if (!audio_is_playing(MenuSound))
{
audio_play_sound(MenuSound, 1, true);
}
if (room != MainMenu) && (room != PlayerSelectMenu)
{
    instance_destroy();
}
