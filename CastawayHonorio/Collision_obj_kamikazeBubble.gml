if (invincible_timer <= 0)
{
    hp -= 10;
    //instance_destroy(other); // Destroi a bala que colidiu
    invincible_timer = invincible_duration;
}