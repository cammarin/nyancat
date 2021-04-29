void keyReleased()
{
	if (key == 'c' || key == 'C')
	{
		intro.pause();
		song.pause();
		String code = prompt ("Digite o código:");
		
		if (gameStarted && !hasLost)
		{
			if (!isPaused)
			{
				song.play();
			}
		}
		else
		{
			intro.play();
		}
		
		if (code.toLowerCase() == "nyanja")
		{
			intro.pause();
			song.pause();
			alert ("Modo ninja");
			if (gameStarted && !hasLost)
			{
				if (!isPaused)
				{
					song.play();
				}
			}
			else
			{
				intro.play();
			}
			nyanja = true;
			
			if (gameStarted && !hasLost)
			{
				float temp = song.currentTime;
				stop();
				song = document.getElementById ("nyanja");
				if (!isPaused)
				{
					song.play();
				}
				song.currentTime = temp;
			}
			else
			{
				song = document.getElementById ("nyanja");
			}
		}
	}
	
	if (key == 'd' || key == 'D')
	{
		debugInfo = !debugInfo;
	}
	
	if (keyCode == ENTER)
	{
		if (!gameStarted || hasLost)
		{
			playTime();
		}
		else if (isPlaying)
		{
			isPaused = !isPaused;
		}
	}
	
	if (keyCode == ESC)
	{
		if (hasLost)
		{
			reset();
			nyancat_x = playButton_x + 300;
			nyancat_y = playButton_y;
			nyancat_frame	= 1;
			gameStarted = false;
		}
	}
}

void mouseClicked()
{
	if (!gameStarted)
	{
		if (dist (mouseX, playButton_y, playButton_x, playButton_y) < (39 * TEXT_PIXEL_SIZE / 2) && dist (playButton_x, mouseY, playButton_x, playButton_y) < (7 * TEXT_PIXEL_SIZE / 2))
		{
			playTime();
		}
	}
	else if (hasLost)
	{
		if (dist (mouseX, (height / 2 + height / 8 + height / 16), playButton_x, (height / 2 + height / 8 + height / 16)) < (39 * TEXT_PIXEL_SIZE / 2) && dist (playButton_x, mouseY, playButton_x, (height / 2 + height / 8 + height / 16)) < (7 * TEXT_PIXEL_SIZE / 2))
		{
			playTime();
		}
	}
}

void mouseMoved()
{
	
	if (isPlaying && !isPaused && !hasLost)
	{
		for (int i = 0; i < (NUM_RAINBOW_SEGMENTS - 1); i++)
		{
			mouse_x[i] -= abs (pmouseX - mouseX) * (1 + i / NUM_RAINBOW_SEGMENTS);
		}
	}
}