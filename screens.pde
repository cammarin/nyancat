// Telas

void showTitleScreen (int frame)
{
	rainbowBrush (nyancat_x - 9 * zoom, nyancat_y);
	drawRainbow();
	drawNyanCat (nyancat_x, nyancat_y, nyancat_frame);
	
	if (frameCount % (FRAMERATE / FPS) == 0)
	{		
		if (++nyancat_frame > LAST_ANIMATION_FRAME)
		{
			nyancat_frame = 1;
		}
	}
	
	drawTitle (frame);
	drawPlayButton (playButton_x, playButton_y, TEXT_PIXEL_SIZE, (frame - 1 % 6));
	
	//fill (#FFFFFF);
	
	//textAlign (CENTER);
	//text ("Instruções", (width / 2), (height / 2 + 340));
}

void showLoseScreen (int frame)
{
	isPlaying = false;
	
	target_x = width / 2;
	
	float dx = target_x - nyancat_x;
	
	if (abs (dx) > 1)
	{
		nyancat_x += dx * (4 * EASING);
	}
	
	target_y = height / 2;
	
	float dy = target_y - nyancat_y;
	
	if (abs (dy) > 1)
	{
		nyancat_y += dy * (4 * EASING);
	}
	
	speed = WARP_SPEED;
	
	if ((abs (nyancat_x - target_x) < 5.0 && abs (nyancat_y - target_y) < 5.0) && (song.currentTime = 3.75))
	{
		cursor();
		speed = MAX_SPEED;
	}
	if (zoom < DEFAULT_ZOOM)
	{
		zoom++;
	}
	
	for (int i = 2 * height; i >= height / 4; i -= height / 4)
	{
		fill (rainbowColors[frame]);
		ellipse (width / 2, height / 2, i, i);
		if (--frame < 0)
		{
			frame = 5;
		}
	}
	
	noStroke();
	
	fill (#000000);
	
	text ("Pontos: " + currentScore, (width / 2), (height / 2 - height / 8 - FONT_SIZE / 2));
	text ("(Pressione ESC para tela inicial)", (width / 2), (height / 2 + height / 4 + 3 / 2 * FONT_SIZE));
	
	drawPlayButton (playButton_x, (height / 2 + height / 8 + height / 16), TEXT_PIXEL_SIZE, frame);
	//drawPlayButton (playButton_x, playButton_y, TEXT_PIXEL_SIZE, frame);
	
	//stop();
}