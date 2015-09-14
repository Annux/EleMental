if (keyboard_check_pressed(vk_space))
{
    statsActive += 1;
    if (statsActive > 1)
    {
        statsActive = 0;
    }
}
