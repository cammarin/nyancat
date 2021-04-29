/*=============================================================*/
/*																															*/
/*			Trabalho Final:	Nyan Cat																			*/
/*			Disciplina:			PCS2190 - Fundamentos de Computação I							*/
/*			Alunos:				Carlos Alberto de Moraes Marin	|	NUSP: 5382736				*/
/*									Thabata Fernanda Oliveira			|	NUSP: 7161177				*/
/*			Docentes:			Prof. Dr. Ricardo Nakamura												*/
/*									Prof. Dr. Romero Tori															*/
/*																															*/
/*=============================================================*/

/* @pjs globalKeyEvents="true"; preload="resources/images/title.png, resources/images/asteroid.png, resources/images/shuriken_1.png, resources/images/shuriken_2.png, resources/images/shuriken_3.png"; */

// Constantes
{
	final int FPS = 12; // Taxa de atualização dos quadros da animação. Padrão = 12
	final int FRAMERATE = 24; // Taxa de atualização de quadros do programa. Padrão = 24
	final int DEFAULT_ZOOM = 5; // Tamanho do "pixel". Padrão = 5
	final int PLAYTIME_ZOOM = 2;
	final int TEXT_PIXEL_SIZE = 8;
	final int NUM_STARS = (screenWidth * screenHeight) / (960 * 640) * 40; // Quantidade de estrelas aparecendo na tela
	final int MAX_STAR_SIZE = DEFAULT_ZOOM;
	//int MIN_ASTEROID_SIZE = 50 / DEFAULT_ZOOM;
	//int MAX_ASTEROID_SIZE = 5 * MIN_ASTEROID_SIZE;
	final float MIN_SPEED = 50.0;
	final float MAX_SPEED = 4 * MIN_SPEED;
	final float WARP_SPEED = 3 * MAX_SPEED;
	final float RAINBOW_SPEED_FACTOR = 0.15;
	final float MIN_ACCELERATION = 1.005;
	final float MAX_ACCELERATION = 1.05;
	final float EASING = 0.05;
	final int NUM_RAINBOW_SEGMENTS = round (screenWidth / (MIN_SPEED * RAINBOW_SPEED_FACTOR));
	final int STAR_WIDTH = 7;
	final int STAR_HEIGHT = STAR_WIDTH;
	final int LAST_ANIMATION_FRAME = 6;
	final int LIFES = 7;
	final int FONT_SIZE = 32;
}

// Variáveis globais
{
	float target_x, target_y;

	boolean debugInfo = false;
	boolean isPlaying;
	boolean isPaused;
	boolean gameStarted;
	boolean lockLifeCounter;
	boolean hasLost;
	boolean nyanja = false;
	//boolean nyanja = true;

	int zoom;
	float speed;
	float acceleration;

	int[] stars_x		= new int[NUM_STARS];
	int[] stars_y		= new int[NUM_STARS];
	int[] stars_size	= new int[NUM_STARS];
	int[] stars_frame   = new int[NUM_STARS];

	int asteroid_x, asteroid_y;

	int nyancat_x, nyancat_y;
	int nyancat_frame;

	int title_x, title_y;
	int title_frame;
	
	int lost_frame;

	int playButton_x, playButton_y;
	int playButton_pixelSize;
	
	int pause_x, pause_y;

    int shuriken_x, shuriken_y;
	int heart_frame;
    
    int shuriken_frame;

	float mouse_x[] = new float[NUM_RAINBOW_SEGMENTS];
	float mouse_y[] = new float[NUM_RAINBOW_SEGMENTS];

	int lifes;
	long currentScore;
	long lastScore;
	long bestScore;

	//PFont font = loadFont ("Arial");
	//textFont (font, 24);
	PFont font = loadFont ("Impact");
	textFont (font, FONT_SIZE);

	PImage imgTitle;
	PImage imgAsteroid;

	int colorIndexBackground = 0;

	color[] warpSpeedBackgroundColors = new color[6];
	color[] rainbowColors = new color[6];

	Audio intro = document.getElementById ("intro");
	Audio song = document.getElementById ("song");
}

void setup()
{	
	size (screenWidth - 2, screenHeight - 7);
	background (#21204A);
	frameRate (FRAMERATE);

	noStroke();
	imageMode (CENTER);
	textAlign (CENTER);
	
	warpSpeedBackgroundColors[0] = color (#FF0000, 50);
	warpSpeedBackgroundColors[1] = color (#FF9900, 50);
	warpSpeedBackgroundColors[2] = color (#FFFF00, 50);
	warpSpeedBackgroundColors[3] = color (#33FF00, 50);
	warpSpeedBackgroundColors[4] = color (#0099FF, 50);
	warpSpeedBackgroundColors[5] = color (#6633FF, 50);
	
	rainbowColors[0] = color (#FF0000);
	rainbowColors[1] = color (#FF9900);
	rainbowColors[2] = color (#FFFF00);
	rainbowColors[3] = color (#33FF00);
	rainbowColors[4] = color (#0099FF);
	rainbowColors[5] = color (#6633FF);
	
	lastScore = localStorage.lastScore;
	bestScore = localStorage.bestScore;
	
	for (int i = 0; i < NUM_STARS; i++)
	{
		stars_x[i]			= random ((-7 * zoom), (width - 7 * zoom));
		stars_y[i]			= random ((-7 * zoom), (height -7 * zoom));
		stars_size[i]		= ceil (random (MAX_STAR_SIZE));
		stars_frame[i]	    = ceil (random (6));
	}
	
	imgTitle = loadImage ("resources/images/title.png");
	imgAsteroid = loadImage ("resources/images/asteroid.png");
	
	title_x	= width  / 2;
	title_y	= height / 2;
	
	playButton_x = width / 2;
	playButton_y = height / 2 + 240;
	
	pause_x	= width  / 2;
	pause_y	= height / 2;
	
	nyancat_x = playButton_x + 300;
	nyancat_y = playButton_y;
	nyancat_frame	= 1;
	
	intro.addEventListener("ended", ended, false);
	
	reset();
}

void draw()
{
	// Plano de fundo
	{
		if (speed == WARP_SPEED)
		{
			background (warpSpeedBackgroundColors[colorIndexBackground]);
			
			if (!isPaused)
			{
				if (frameCount % (FRAMERATE / FPS) == 0)
				{				
					if (++colorIndexBackground > warpSpeedBackgroundColors.length)
					{
						colorIndexBackground = 0;
					}
				}
			}
		}
		else
		{
			background (#21204A);
		}
	}
	
	// Estrelas
	{
		for (int i = 0; i < NUM_STARS; i++)
		{
			drawStar (stars_x[i], stars_y[i], stars_size[i], stars_frame[i]);
			
			if (!isPaused)
			{
				if (frameCount % (FRAMERATE / FPS) == 0)
				{
					//if (speed == WARP_SPEED)
					if (speed > MAX_SPEED)
					{
						stars_frame[i] = 0;
					}
					else
					{					
						if (++stars_frame[i] > LAST_ANIMATION_FRAME)
						{
							stars_frame[i] = 1;
						}
					}
				}
				
				stars_x[i] -= floor (speed / stars_size[i] / (FRAMERATE / FPS));
				
				if (stars_x[i] < (-STAR_WIDTH * zoom))
				{
					stars_x[i]			= width - STAR_WIDTH * zoom;
					stars_y[i]			= random ((-STAR_HEIGHT * zoom), height);
					stars_size[i]		= ceil (random (MAX_STAR_SIZE));
				}
			}
		}
	}
	
	if (!gameStarted)
	{
		showTitleScreen (title_frame);
		
		if (frameCount % (FRAMERATE / (FPS / 3)) == 0)
		{			
			if (--title_frame == 0)
			{
				title_frame = 6;
			}
		}
	}
	else
	{
		if (isPlaying && !hasLost)
		{
			if (isPaused)
			{
				cursor();
				song.pause();
			}
			else
			{
				noCursor();
				song.play();
				
				if ((nyanja && song.currentTime > 86.1) || (!nyanja && song.currentTime > 193.2))
				{
					//song.currentTime = 3.745;
					song.currentTime = 4.0;
				}
				
				currentScore += round (speed / 80);
				
				if (frameCount % (FRAMERATE / FPS) == 0)
				{	
					if (speed >= MAX_SPEED)
					{
						acceleration = MAX_ACCELERATION;
					}
					else
					{
						acceleration = MIN_ACCELERATION;
					}
					
					if (speed >= WARP_SPEED)
					{
						speed = WARP_SPEED;
					}
					else
					{
						speed *= acceleration;
					}
				}
				
				nyancat_x = constrain (mouseX, (16 * zoom), (width - 17 * zoom));
				nyancat_y = constrain (mouseY, (10 * zoom), (height - 11 * zoom));
				
				asteroid_x -= floor (speed / 3 / (FRAMERATE / FPS));
				
				if (asteroid_x < -imgAsteroid.width * zoom)
				{
					asteroid_x = (width + imgAsteroid.width / 2 * zoom);
					asteroid_y = random (height);
				}
                
                shuriken_x = asteroid_x;
                shuriken_y = asteroid_y;

				//if (dist (nyancat_x, nyancat_y, asteroid_x, asteroid_y) < max (imgAsteroid.width, imgAsteroid.height) / 2 * zoom)
				if (dist (asteroid_x, asteroid_y, nyancat_x, nyancat_y) < (32 + imgAsteroid.width) / 2 * zoom)
				{
					asteroid_x = (width + imgAsteroid.width / 2 * zoom);
					asteroid_y = random (height);
					//isPaused = true;
					if (!lockLifeCounter) // Talvez não precise mais
					{
						lockLifeCounter = true;
						
						speed = MIN_SPEED;
						acceleration = MIN_ACCELERATION;
						
						if (--lifes < 1)
						{
							lastScore = currentScore;
							bestScore = max (currentScore, bestScore);
							localStorage.lastScore = lastScore;
							localStorage.bestScore = bestScore;
							
							//reset();
							
							hasLost = true;
							stop();
							intro.play();
						}
					}
					
					if (stars_frame[0] == 0)
					{
						for (int i = 0; i < NUM_STARS; i++)
						{
							stars_frame[i] = ceil (random (6));
						}
					}
				}
				else
				{
					lockLifeCounter = false;
				}
			}
		}
		else if (hasLost)
		{
			showLoseScreen (lost_frame);
			
			if (frameCount % (FRAMERATE / FPS) == 0)
			{			
				if (--lost_frame < 0)
				{
					lost_frame = 5;
				}
			}
		}
		else
		{
			target_x = width / 2;
			
			float dx = target_x - nyancat_x;
			
			if (abs (dx) > 1)
			{
				nyancat_x += dx * EASING;
			}
			
			target_y = height / 2;
			
			float dy = target_y - nyancat_y;
			
			if (abs (dy) > 1)
			{
				nyancat_y += dy * EASING;
			}
			
			speed *= 0.98;
			
			if ((abs (nyancat_x - target_x) < 5.0 && abs (nyancat_y - target_y) < 5.0) && (speed <= MIN_SPEED) && (song.currentTime >= 3.5))
			{
				isPlaying = true;
				speed = MIN_SPEED;
				
				noCursor();
			}
			if (zoom > PLAYTIME_ZOOM)
			{
				zoom--;
			}
		}

		if (!isPaused)
		{
			if (frameCount % (FRAMERATE / FPS) == 0)
			{		
				if (++nyancat_frame > LAST_ANIMATION_FRAME)
				{
					nyancat_frame = 1;
				}
			}
			
			rainbowBrush ((nyancat_x - 9 * zoom), nyancat_y);
		}
		
		drawRainbow ();
		drawNyanCat (nyancat_x, nyancat_y, nyancat_frame);
		
		if (!hasLost)
		{
            if (nyanja)
            {
                //drawShuriken (shuriken_x, shuriken_y, shuriken_frame);
				//drawShuriken (shuriken_x, shuriken_y, 1, 3);
				imgAsteroid = loadImage ("resources/images/shuriken_" + shuriken_frame + ".png");
				
				if (frameCount % (FRAMERATE / (FPS / 2)) == 0 && !isPaused)
				{
					if (--shuriken_frame < 1)
					{
						shuriken_frame = 3;
					}
				}
            }
            //else
            {
                image (imgAsteroid, asteroid_x, asteroid_y, (imgAsteroid.width * zoom/3*2), (imgAsteroid.height * zoom/3*2));
            }
		}
		
		if (frameCount % (FRAMERATE / FPS) == 0)
		{			
			if (++heart_frame == 6)
			{
				heart_frame = 0;
			}
		}
		
		for (int i = 0; i < lifes; i++)
		{
			//drawHeart (((i * 15 + 10) * zoom), (10 * zoom), heart_frame);
			drawHeart (((i * 15 + 10) * zoom), (height - 20 * zoom), heart_frame);
		}
	}
	
	if (!hasLost)
	{
		fill (floor (random (128, 256)), floor (random (128, 256)), floor (random (128, 256)));
		
		if (gameStarted)
		{
			text ("Pontos: " + currentScore,  (width / 2), 50);
		}
		else
		{
			textAlign (RIGHT);
			text ("Anterior: " + lastScore,  (width / 2 - 25), (height / 2 - 240));
			
			textAlign (LEFT);
			text ("Melhor: " + bestScore,  (width / 2 + 25), (height / 2 - 240));
			
			textAlign (CENTER);
		}
	}
	
	if (gameStarted && !isPlaying && !hasLost)
	{
		if (song.currentTime < 3.3)
		{
			drawReady ((width / 2), (height / 2), 5);
		}
		else	
		{
			drawGo ((width / 2), (height / 2), 5);
		}
	}
	
	if (isPaused)
	{
		drawPause (pause_x, pause_y, TEXT_PIXEL_SIZE);
	}
	
	if (debugInfo)
	{
		// fill (floor (random (128, 256)), floor (random (128, 256)), floor (random (128, 256)));
		if (hasLost)
		{
			fill (#000000);
		}
		else
		{
			fill (#FFFFFF);
		}
		
		textAlign (LEFT);
		
		text ("FPS: " + round (frameRate),  50, 50);
		
		if (speed == WARP_SPEED)
		{
			text ("Velocidade:  MAX", 50, (height - 50));
		}
		else
		{
			text ("Velocidade:  " + round (speed), 50, (height - 50));	
		}
		
		/*textAlign (CENTER);
		
		text ("VIDAS: " + lifes,  (width / 2), 50);
		
		if (gameStarted)
		{
			text ("PLACAR: " + currentScore,  (width / 2), (height - 50));
		}
		else
		{
			text ("ÚLTIMO: " + lastScore + " / MELHOR: " + bestScore,  (width / 2), (height - 50));
		}*/
		
		textAlign (RIGHT);
		
		text ("Resolução: " + (width + 2) + "x" + (height + 8),  (width - 50), 50);
		text ("Zoom: " + zoom + "X",  (width - 50), (height - 50));
		
		textAlign (CENTER);
	}
}