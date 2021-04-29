void reset()
{
    cursor();
    
    zoom = DEFAULT_ZOOM;
    lifes = LIFES;
    currentScore = 0;
    speed = MAX_SPEED;
    title_frame = 1;
    lost_frame = 1;
    
    for (int i = 0; i < NUM_RAINBOW_SEGMENTS; i++)
    {
        mouse_x[i] = nyancat_x - 9 * zoom - (NUM_RAINBOW_SEGMENTS - i) * speed;
        mouse_y[i] = nyancat_y;
    }
    
    asteroid_x = (width + imgAsteroid.width / 2 * zoom);
    asteroid_y = random (height);
	
	shuriken_x = asteroid_x;
	shuriken_y = asteroid_y;
	shuriken_frame = 1;
    
    heart_frame = 0;
    
    //gameStarted = false;
    isPlaying = false;
    isPaused = false;
    lockLifeCounter = false;
    hasLost = false;
    
    stop();
	intro.play();
}

void playTime()
{
    reset();
    gameStarted = true;
    
	stop();
    song.play();
}