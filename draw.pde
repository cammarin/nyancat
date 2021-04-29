// Funções de desenho

void drawStar (int x, int y, int size, int frame)
{
	fill (#FFFFFF);

	if (frame == 0)
	{
		if (!isPaused)
		{
			fill (floor (random (128, 256)), floor (random (128, 256)), floor (random (128, 256)));
		}
		
		rect (x, (y + 3 * ceil (zoom / size)), ((2 / 3 * speed) * ceil (zoom / size)), ceil (zoom / size));
	}
	else if (frame == 1)
	{
		rect ((x + 3 * ceil (zoom / size)), (y + 3 * ceil (zoom / size)), ceil (zoom / size), ceil (zoom / size));
	}
	else if (frame == 2)
	{
		rect ((x + 3 * ceil (zoom / size)), (y + 2 * ceil (zoom / size)), ceil (zoom / size), ceil (zoom / size));
		rect ((x + 4 * ceil (zoom / size)), (y + 3 * ceil (zoom / size)), ceil (zoom / size), ceil (zoom / size));
		rect ((x + 3 * ceil (zoom / size)), (y + 4 * ceil (zoom / size)), ceil (zoom / size), ceil (zoom / size));
		rect ((x + 2 * ceil (zoom / size)), (y + 3 * ceil (zoom / size)), ceil (zoom / size), ceil (zoom / size));
	}
	else if (frame == 3)
	{
		rect ((x + 3 * ceil (zoom / size)), (y + ceil (zoom / size)), ceil (zoom / size), (2 * ceil (zoom / size)));
		rect ((x + 4 * ceil (zoom / size)), (y + 3 * ceil (zoom / size)), (2 * ceil (zoom / size)), ceil (zoom / size));
		rect ((x + 3 * ceil (zoom / size)), (y + 4 * ceil (zoom / size)), ceil (zoom / size), (2 * ceil (zoom / size)));
		rect ((x + ceil (zoom / size)), (y + 3 * ceil (zoom / size)), (2 * ceil (zoom / size)), ceil (zoom / size));
	}
	else if (frame == 4)
	{
		rect ((x + 3 * ceil (zoom / size)), y, ceil (zoom / size), (2 * ceil (zoom / size)));
		rect ((x + 5 * ceil (zoom / size)), (y + 3 * ceil (zoom / size)), (2 * ceil (zoom / size)), ceil (zoom / size));
		rect ((x + 3 * ceil (zoom / size)), (y + 5 * ceil (zoom / size)), ceil (zoom / size), (2 * ceil (zoom / size)));
		rect (x, (y + 3 * ceil (zoom / size)), (2 * ceil (zoom / size)), ceil (zoom / size));
		rect ((x + 3 * ceil (zoom / size)), (y + 3 * ceil (zoom / size)), ceil (zoom / size), ceil (zoom / size));
	}
	else if (frame == 5)
	{
		rect ((x + 3 * ceil (zoom / size)), y, ceil (zoom / size), ceil (zoom / size));
		rect ((x + 5 * ceil (zoom / size)), (y + ceil (zoom / size)), ceil (zoom / size), ceil (zoom / size));
		rect ((x + 6 * ceil (zoom / size)), (y + 3 * ceil (zoom / size)), ceil (zoom / size), ceil (zoom / size));
		rect ((x + 5 * ceil (zoom / size)), (y + 5 * ceil (zoom / size)), ceil (zoom / size), ceil (zoom / size));
		rect ((x + 3 * ceil (zoom / size)), (y + 6 * ceil (zoom / size)), ceil (zoom / size), ceil (zoom / size));
		rect ((x + ceil (zoom / size)), (y + 5 * ceil (zoom / size)), ceil (zoom / size), ceil (zoom / size));
		rect (x, (y + 3 * ceil (zoom / size)), ceil (zoom / size), ceil (zoom / size));
		rect ((x + ceil (zoom / size)), (y + ceil (zoom / size)), ceil (zoom / size), ceil (zoom / size));
	}
	else
	{
		rect ((x + 3 * ceil (zoom / size)), y, ceil (zoom / size), ceil (zoom / size));
		rect ((x + 6 * ceil (zoom / size)), (y + 3 * ceil (zoom / size)), ceil (zoom / size), ceil (zoom / size));
		rect ((x + 3 * ceil (zoom / size)), (y + 6 * ceil (zoom / size)), ceil (zoom / size), ceil (zoom / size));
		rect (x, (y + 3 * ceil (zoom / size)), ceil (zoom / size), ceil (zoom / size));
	}
}

void drawNyanCat (int x, int y, int frame)
{
	if (frame == 1)
	{
		drawPaws (x, y, frame);
		drawTail (x, y, frame);
		drawPoptart (x, y);
		
		if (nyanja)
		{
			drawNinjaSuit (x, y);
			drawNinjaSword (x, y);
		}
		
		drawHead (x, y);
		
		if (nyanja)
		{
			drawNinjaMask (x, y);
		}
	}
	else if (frame == 2)
	{
		drawPaws (x, y, frame);
		drawTail (x, y, frame);
		drawPoptart (x, y);
		
		if (nyanja)
		{
			drawNinjaSuit (x, y);
			drawNinjaSword (x + zoom, y);
		}
		
		drawHead (x + zoom, y);
		
		if (nyanja)
		{
			drawNinjaMask (x + zoom, y);
		}
	}
	else if (frame == 3)
	{
		drawPaws (x, y, frame);
		drawTail (x, y, frame);
		drawPoptart (x, y + zoom);
		
		if (nyanja)
		{
			drawNinjaSuit (x, y + zoom);
			drawNinjaSword (x + 2 * zoom, y + zoom);
		}
		
		drawHead (x + zoom, y + zoom);
		
		if (nyanja)
		{
			drawNinjaMask (x + zoom, y + zoom);
		}

		if (!isPaused)
		{
			for (int i = 0; i < NUM_RAINBOW_SEGMENTS; i++)
			{
				mouse_y[i] += zoom;
			}
		}
	}
	else if (frame == 4)
	{
		drawPaws (x, y, frame);
		drawTail (x, y, frame);
		drawPoptart (x, y + zoom);
		
		if (nyanja)
		{
			drawNinjaSuit (x, y + zoom);
			drawNinjaSword (x + zoom, y + zoom);
		}
		
		drawHead (x + zoom, y + zoom);
		
		if (nyanja)
		{
			drawNinjaMask (x + zoom, y + zoom);
		}
	}
	else if (frame == 5)
	{
		drawPaws (x, y, frame);
		drawTail (x, y, frame);
		drawPoptart (x, y + zoom);
		
		if (nyanja)
		{
			drawNinjaSuit (x, y + zoom);
			drawNinjaSword (x - zoom, y + zoom);
		}
		
		drawHead (x, y + zoom);
		
		if (nyanja)
		{
			drawNinjaMask (x, y + zoom);
		}
	}
	else
	{
		drawPaws (x, y, frame);
		drawTail (x, y, frame);
		drawPoptart (x, y + zoom);
		
		if (nyanja)
		{
			drawNinjaSuit (x, y + zoom);
			drawNinjaSword (x - zoom, y);
		}
		
		drawHead (x, y);
		
		if (nyanja)
		{
			drawNinjaMask (x, y);
		}
		
		if (!isPaused)
		{
			for (int i = 0; i < NUM_RAINBOW_SEGMENTS; i++)
			{
				mouse_y[i] -= zoom;
			}
		}
	}
}


void drawPoptart (int x, int y)
{
	// Contorno
	{
		fill (#000000);
		
		rect ((x - 10 * zoom), (y - 8 * zoom), (21 * zoom), (14 * zoom)); 
		rect ((x - 9 * zoom), (y - 9 * zoom), (19 * zoom), (16 * zoom));
		rect ((x - 8 * zoom), (y - 10 * zoom), (17 * zoom), (18 * zoom));
	}
	
	// Preenchimento
	{
		fill (#FFCC99);
		
		rect ((x - 9 * zoom), (y - 8 * zoom), (19 * zoom), (14 * zoom)); 
		rect ((x - 8 * zoom), (y - 9 * zoom), (17 * zoom), (16 * zoom));
	}
	
	// Geleia
	{
		fill (#FF99FF);
		
		rect ((x - 8 * zoom), (y - 6 * zoom), (17 * zoom), (10 * zoom)); 
		rect ((x - 7 * zoom), (y - 7 * zoom), (15 * zoom), (12 * zoom));
		rect ((x - 6 * zoom), (y - 8 * zoom), (13 * zoom), (14 * zoom));
	}
	
	// Pintinhas
	{
		fill (#FF3399);
		
		rect ((x - zoom), (y - 7 * zoom), zoom, zoom);
		rect ((x + 2 * zoom), (y - 7 * zoom), zoom, zoom);
		rect ((x - 6 * zoom), (y - 6 * zoom), zoom, zoom);
		rect ((x + 6 * zoom), (y - 5 * zoom), zoom, zoom);
		rect ((x - 2 * zoom), (y - 3 * zoom), zoom, zoom);
		rect ((x - 5 * zoom), (y - zoom), zoom, zoom);
		rect ((x - zoom), y, zoom, zoom);
		rect ((x - 7 * zoom), (y + zoom), zoom, zoom);
		rect ((x - 3 * zoom), (y + 3 * zoom), zoom, zoom);
		rect ((x - 6 * zoom), (y + 4 * zoom), zoom, zoom);
		rect (x, (y + 4 * zoom), zoom, zoom);
	}
}

void drawHead (int x, int y)
{
	// Contorno
	{
		fill (#000000);
		
		rect ((x + 3 * zoom), (y - 2 * zoom), (10 * zoom), (10 * zoom));
		rect ((x + 2 * zoom), (y + 6 * zoom), (12 * zoom), zoom);
		rect ((x + zoom), (y + 5 * zoom), (14 * zoom), zoom);
		rect (x, y, (16 * zoom), (5 * zoom));
		rect ((x + zoom), (y - 4 * zoom), (4 * zoom), (4 * zoom));
		rect ((x + 11 * zoom), (y - 4 * zoom), (4 * zoom), (4 * zoom));
		rect ((x + 2 * zoom), (y - 5 * zoom), (2 * zoom), zoom);
		rect ((x + 12 * zoom), (y - 5 * zoom), (2 * zoom), zoom);
		rect ((x + 5 * zoom), (y - 3 * zoom), zoom, zoom);
		rect ((x + 10 * zoom), (y - 3 * zoom), zoom, zoom);
	}
	
	// Preenchimento
	{
		fill (#999999);
		
		rect ((x + 3 * zoom), (y - zoom), (10 * zoom), (8 * zoom));
		rect ((x + 3 * zoom), (y + 6 * zoom), (10 * zoom), zoom);
		rect ((x + 2 * zoom), (y + 5 * zoom), (12 * zoom), zoom);
		rect (x + zoom, y, (14 * zoom), (5 * zoom));
		rect ((x + 2 * zoom), (y - 4 * zoom), (2 * zoom), (4 * zoom));
		rect ((x + 12 * zoom), (y - 4 * zoom), (2 * zoom), (4 * zoom));
		rect ((x + 2 * zoom), (y - 3 * zoom), (3 * zoom), zoom);
		rect ((x + 11 * zoom), (y - 3 * zoom), (3 * zoom), zoom);
		rect ((x + 2 * zoom), (y - 2 * zoom), (4 * zoom), zoom);
		rect ((x + 10 * zoom), (y - 2 * zoom), (4 * zoom), zoom);
	}
	
	// Boca
	{
		fill (#000000);
		
		rect ((x + 5 * zoom), (y + 4 * zoom), (7 * zoom), (2 * zoom));
		
		fill (#999999);
		
		rect ((x + 6 * zoom), (y + 4 * zoom), (2 * zoom), zoom);
		rect ((x + 9 * zoom), (y + 4 * zoom), (2 * zoom), zoom);
	}
	
	// Nariz
	{
		fill (#000000);
		
		rect ((x + 9 * zoom), (y + 2 * zoom), zoom, zoom);
	}
	
	// Olhos
	{
		fill (#000000);
		
		rect ((x + 4 * zoom), (y + zoom), (2 * zoom), (2 * zoom));
		rect ((x + 11 * zoom), (y + zoom), (2 * zoom), (2 * zoom));
		
		fill (#FFFFFF);
		
		rect ((x + 4 * zoom), (y + zoom), zoom, zoom);
		rect ((x + 11 * zoom), (y + zoom), zoom, zoom);
	}
	
	// Bochechas
	{
		fill (#FF9999);
		
		rect ((x + 2 * zoom), (y + 3 * zoom), (2 * zoom), (2 * zoom));
		rect ((x + 13 * zoom), (y + 3 * zoom), (2 * zoom), (2 * zoom));
	}
}

void drawNinjaSuit (int x, int y)
{
	// Preenchimento
	{
		fill (#999999);
		
		rect ((x - 9 * zoom), (y - 8 * zoom), (19 * zoom), (14 * zoom)); 
		rect ((x - 8 * zoom), (y - 9 * zoom), (17 * zoom), (16 * zoom));
	}
	
	// Geleia
	{
		fill (#4C4C4C);
		
		rect ((x - 8 * zoom), (y - 6 * zoom), (17 * zoom), (10 * zoom)); 
		rect ((x - 7 * zoom), (y - 7 * zoom), (15 * zoom), (12 * zoom));
		rect ((x - 6 * zoom), (y - 8 * zoom), (13 * zoom), (14 * zoom));
	}
	
	// Contorno da faixa
	{
		fill (#000000);
		
		rect ((x - 5 * zoom), (y - 9 * zoom), (4 * zoom), (16 * zoom));
	}
	
	// Faixa
	{
		fill (#FFFFFF);
		
		rect ((x - 4 * zoom), (y - 9 * zoom), (2 * zoom), (16 * zoom));
	}
}

void drawNinjaMask (int x, int y)
{
	// Mascara
	{
		fill (#000000);
		
		rect ((x + zoom), y, (2 * zoom), (5 * zoom));
		rect ((x + 14 * zoom), y, zoom, (5 * zoom));
		rect ((x + 2 * zoom), (y - zoom), (12 * zoom), zoom);
		rect ((x + 2 * zoom), (y + 4 * zoom), (13 * zoom), zoom);
		rect ((x + 3 * zoom), (y + 6 * zoom), (10 * zoom), zoom);
		rect ((x + 2 * zoom), (y + 5 * zoom), (12 * zoom), zoom);
		rect ((x + 2 * zoom), (y - 4 * zoom), (2 * zoom), (4 * zoom));
		rect ((x + 12 * zoom), (y - 4 * zoom), (2 * zoom), (4 * zoom));
		rect ((x + 2 * zoom), (y - 3 * zoom), (3 * zoom), zoom);
		rect ((x + 11 * zoom), (y - 3 * zoom), (3 * zoom), zoom);
		rect ((x + 2 * zoom), (y - 2 * zoom), (4 * zoom), zoom);
		rect ((x + 10 * zoom), (y - 2 * zoom), (4 * zoom), zoom);
	}

}

void drawNinjaSword (int x, int y)
{
	//Contorno
	{
		fill (#000000);
		
		rect ((x + 9 * zoom), (y + 10 * zoom), (3 * zoom), (3 * zoom));
		rect ((x + 12 * zoom), (y + 8 * zoom), (3 * zoom), (7 * zoom));
		rect ((x + 15 * zoom), (y + 9 * zoom), (15 * zoom), (5 * zoom));
		rect ((x + 30 * zoom), (y + 10 * zoom), zoom, (3 * zoom));
		rect ((x + 31 * zoom), (y + 11 * zoom), zoom, zoom);
	}
	
	//Preenchimento
	{
		fill (#999999);
		
		rect ((x + 15 * zoom), (y + 10 * zoom), (15 * zoom), (3 * zoom));
		rect ((x + 30 * zoom), (y + 11 * zoom), zoom, zoom);
	}
	
	//Empunhadura
	{
		fill (#FF9919);
		
		rect ((x + 10 * zoom), (y + 11 * zoom), (2 * zoom), zoom);
		rect ((x + 13 * zoom), (y + 9 * zoom), zoom, (5 * zoom));
	}
}

void drawTail (int x, int y, int frame)
{
	if (frame == 1)
	{
		// Contorno
		{
			fill (#000000);
			
			rect ((x - 16 * zoom), (y - 3 * zoom), (4 * zoom), (3 * zoom));
			rect ((x - 15 * zoom), (y - 2 * zoom), (4 * zoom), (3 * zoom));
			rect ((x - 14 * zoom), (y - zoom), (4 * zoom), (3 * zoom));
			rect ((x - 13 * zoom), y, (4 * zoom), (3 * zoom));
			rect ((x - 11 * zoom), (y + 3 * zoom), zoom, zoom);
		}
		
		// Preenchimento
		{
			fill (#999999);
			
			rect ((x - 15 * zoom), (y - 2 * zoom), (2 * zoom), zoom);
			rect ((x - 14 * zoom), (y - zoom), (2 * zoom), zoom);
			rect ((x - 13 * zoom), y, (2 * zoom), zoom);
			rect ((x - 12 * zoom), (y + zoom), (2 * zoom), zoom);
		}
	}
	else if (frame == 2)
	{
		// Contorno
		{
			fill (#000000);
			
			rect ((x - 16 * zoom), (y - 2 * zoom), (4 * zoom), (2 * zoom));
			rect ((x - 15 * zoom), (y - 3 * zoom), (2 * zoom), (4 * zoom));
			rect ((x - 14 * zoom), (y - 2 * zoom), (2 * zoom), (4 * zoom));
			rect ((x - 12 * zoom), (y - zoom), (2 * zoom), (4 * zoom));
		}
		
		// Preenchimento
		{
			fill (#999999);
			
			rect ((x - 15 * zoom), (y - 2 * zoom), (2 * zoom), (2 * zoom));
			rect ((x - 14 * zoom), y, (4 * zoom), zoom);
			rect ((x - 12 * zoom), (y + zoom), (2 * zoom), zoom);
		}
	}
	else if (frame == 3)
	{
		// Contorno
		{
			fill (#000000);
			
			rect ((x - 16 * zoom), (y + 3 * zoom), (6 * zoom), (2 * zoom));
			rect ((x - 15 * zoom), (y + 5 * zoom), (4 * zoom), zoom);
			rect ((x - 14 * zoom), (y + 2 * zoom), (4 * zoom), (3 * zoom));
			rect ((x - 11 * zoom), (y + zoom), zoom, zoom);
		}
		
		// Preenchimento
		{
			fill (#999999);
			
			rect ((x - 15 * zoom), (y + 4 * zoom), (3 * zoom), zoom);
			rect ((x - 14 * zoom), (y + 3 * zoom), (4 * zoom), zoom);
		}
	}
	else if (frame == 4)
	{
		// Contorno
		{
			fill (#000000);
			
			rect ((x - 16 * zoom), (y + 4 * zoom), (4 * zoom), (2 * zoom));
			rect ((x - 15 * zoom), (y + 3 * zoom), (2 * zoom), (4 * zoom));
			rect ((x - 14 * zoom), (y + 2 * zoom), (2 * zoom), (4 * zoom));
			rect ((x - 12 * zoom), (y + zoom), (2 * zoom), (4 * zoom));
		}
		
		// Preenchimento
		{
			fill (#999999);
			
			rect ((x - 15 * zoom), (y + 4 * zoom), (2 * zoom), (2 * zoom));
			rect ((x - 14 * zoom), (y + 3 * zoom), (4 * zoom), zoom);
			rect ((x - 12 * zoom), (y + 2 * zoom), (2 * zoom), zoom);
		}
	}
	else if (frame == 5)
	{
		// Contorno
		{
			fill (#000000);
			
			rect ((x - 17 * zoom), y, (7 * zoom), (2 * zoom));
			rect ((x - 16 * zoom), (y - zoom), (4 * zoom), zoom);
			rect ((x - 15 * zoom), y, (5 * zoom), (3 * zoom));
			rect ((x - 12 * zoom), (y + 3 * zoom), (2 * zoom), zoom);
		}
		
		// Preenchimento
		{
			fill (#999999);
			
			rect ((x - 16 * zoom), y, (3 * zoom), zoom);
			rect ((x - 15 * zoom), (y + zoom), (4 * zoom), zoom);
			rect ((x - 11 * zoom), (y + 2 * zoom), zoom, zoom);
		}
	}
	else
	{
		// Contorno
		{
			fill (#000000);
			
			rect ((x - 16 * zoom), (y - 2 * zoom), (4 * zoom), (2 * zoom));
			rect ((x - 15 * zoom), (y - 3 * zoom), (2 * zoom), (4 * zoom));
			rect ((x - 14 * zoom), (y - 2 * zoom), (2 * zoom), (4 * zoom));
			rect ((x - 12 * zoom), (y - zoom), (2 * zoom), (4 * zoom));
		}
		
		// Preenchimento
		{
			fill (#999999);
			
			rect ((x - 15 * zoom), (y - 2 * zoom), (2 * zoom), (2 * zoom));
			rect ((x - 14 * zoom), y, (4 * zoom), zoom);
			rect ((x - 12 * zoom), (y + zoom), (2 * zoom), zoom);
		}
	}
}

void drawPaws (int x, int y, int frame)
{
	if (frame == 1)
	{
		// Contorno
		{
			fill (#000000);
			
			rect ((x - 12 * zoom), (y + 7 * zoom), (4 * zoom), (3 * zoom));
			rect ((x - 11 * zoom), (y + 6 * zoom), (4 * zoom), (3 * zoom));
			
			rect ((x - 6 * zoom), (y + 8 * zoom), (3 * zoom), (2 * zoom));
			rect ((x - 3 * zoom), (y + 8 * zoom), zoom, zoom);
			
			rect ((x + 3 * zoom), (y + 8 * zoom), zoom, zoom);
			rect ((x + 4 * zoom), (y + 8 * zoom), (3 * zoom), (2 * zoom));
			
			rect ((x + 8 * zoom), (y + 8 * zoom), (4 * zoom), zoom);
			rect ((x + 9 * zoom), (y + 9 * zoom), (2 * zoom), zoom);
		}
		
		// Preenchimento
		{
			fill (#999999);
			
			rect ((x - 11 * zoom), (y + 7 * zoom), (3 * zoom), zoom);
			rect ((x - 11 * zoom), (y + 8 * zoom), (2 * zoom), zoom);
			
			rect ((x - 5 * zoom), (y + 8 * zoom), (2 * zoom), zoom);
			
			rect ((x + 4 * zoom), (y + 8 * zoom), (2 * zoom), zoom);
			
			rect ((x + 9 * zoom), (y + 8 * zoom), (2 * zoom), zoom);
		}
	}
	else if (frame == 2)
	{
		// Contorno
		{
			fill (#000000);
			
			rect ((x - 11 * zoom), (y + 7 * zoom), (3 * zoom), (3 * zoom));
			rect ((x - 10 * zoom), (y + 6 * zoom), (3 * zoom), (3 * zoom));
			
			rect ((x - 6 * zoom), (y + 8 * zoom), zoom, zoom);
			rect ((x - 5 * zoom), (y + 8 * zoom), (3 * zoom), (2 * zoom));
			
			rect ((x + 4 * zoom), (y + 8 * zoom), zoom, zoom);
			rect ((x + 5 * zoom), (y + 8 * zoom), (3 * zoom), (2 * zoom));
			
			rect ((x + 9 * zoom), (y + 8 * zoom), zoom, zoom);
			rect ((x + 10 * zoom), (y + 8 * zoom), (3 * zoom), (2 * zoom));
		}
		
		// Preenchimento
		{
			fill (#999999);
			
			rect ((x - 10 * zoom), (y + 7 * zoom), (2 * zoom), (2 * zoom));
			
			rect ((x - 5 * zoom), (y + 8 * zoom), (2 * zoom), zoom);
			
			rect ((x + 5 * zoom), (y + 8 * zoom), (2 * zoom), zoom);
			
			rect ((x + 10 * zoom), (y + 8 * zoom), (2 * zoom), zoom);
		}
	}
	else if (frame == 3)
	{
		// Contorno
		{
			fill (#000000);
			
			rect ((x - 10 * zoom), (y + 7 * zoom), (3 * zoom), (4 * zoom));
			rect ((x - 7 * zoom), (y + 9 * zoom), zoom, zoom);
			
			rect ((x - 5 * zoom), (y + 9 * zoom), zoom, zoom);
			rect ((x - 4 * zoom), (y + 9 * zoom), (3 * zoom), (2 * zoom));
			
			rect ((x + 5 * zoom), (y + 9 * zoom), zoom, zoom);
			rect ((x + 6 * zoom), (y + 9 * zoom), (3 * zoom), (2 * zoom));
			
			rect ((x + 10 * zoom), (y + 9 * zoom), zoom, zoom);
			rect ((x + 11 * zoom), (y + 9 * zoom), (3 * zoom), (2 * zoom));
		}
		
		// Preenchimento
		{
			fill (#999999);
			
			rect ((x - 9 * zoom), (y + 8 * zoom), (2 * zoom), (2 * zoom));
			
			rect ((x - 4 * zoom), (y + 9 * zoom), (2 * zoom), zoom);
			
			rect ((x + 6 * zoom), (y + 9 * zoom), (2 * zoom), zoom);
			
			rect ((x + 11 * zoom), (y + 9 * zoom), (2 * zoom), zoom);
		}
	}
	else if (frame == 4)
	{
		// Contorno
		{
			fill (#000000);
			
			rect ((x - 11 * zoom), (y + 8 * zoom), (3 * zoom), (3 * zoom));
			rect ((x - 10 * zoom), (y + 7 * zoom), (3 * zoom), (3 * zoom));
			
			rect ((x - 6 * zoom), (y + 9 * zoom), zoom, zoom);
			rect ((x - 5 * zoom), (y + 9 * zoom), (3 * zoom), (2 * zoom));
			
			rect ((x + 4 * zoom), (y + 9 * zoom), zoom, zoom);
			rect ((x + 5 * zoom), (y + 9 * zoom), (3 * zoom), (2 * zoom));
			
			rect ((x + 9 * zoom), (y + 9 * zoom), zoom, zoom);
			rect ((x + 10 * zoom), (y + 9 * zoom), (3 * zoom), (2 * zoom));
		}
		
		// Preenchimento
		{
			fill (#999999);
			
			rect ((x - 10 * zoom), (y + 8 * zoom), (2 * zoom), (2 * zoom));
			
			rect ((x - 5 * zoom), (y + 9 * zoom), (2 * zoom), zoom);
			
			rect ((x + 5 * zoom), (y + 9 * zoom), (2 * zoom), zoom);
			
			rect ((x + 10 * zoom), (y + 9 * zoom), (2 * zoom), zoom);
		}
	}
	else if (frame == 5)
	{
		// Contorno
		{
			fill (#000000);
			
			rect ((x - 13 * zoom), (y + 8 * zoom), (3 * zoom), (3 * zoom));
			rect ((x - 12 * zoom), (y + 7 * zoom), (3 * zoom), (3 * zoom));
			rect ((x - 11 * zoom), (y + 6 * zoom), (3 * zoom), (3 * zoom));
			
			rect ((x - 8 * zoom), (y + 9 * zoom), zoom, zoom);
			rect ((x - 7 * zoom), (y + 9 * zoom), (3 * zoom), (2 * zoom));
			
			rect ((x + 2 * zoom), (y + 9 * zoom), zoom, zoom);
			rect ((x + 3 * zoom), (y + 9 * zoom), (3 * zoom), (2 * zoom));
			
			rect ((x + 7 * zoom), (y + 9 * zoom), zoom, zoom);
			rect ((x + 8 * zoom), (y + 9 * zoom), (3 * zoom), (2 * zoom));
		}
		
		// Preenchimento
		{
			fill (#999999);
			
			rect ((x - 12 * zoom), (y + 8 * zoom), (3 * zoom), zoom);
			rect ((x - 12 * zoom), (y + 9 * zoom), (2 * zoom), zoom);
			
			rect ((x - 7 * zoom), (y + 9 * zoom), (2 * zoom), zoom);
			
			rect ((x + 3 * zoom), (y + 9 * zoom), (2 * zoom), zoom);
			
			rect ((x + 8 * zoom), (y + 9 * zoom), (2 * zoom), zoom);
		}
	}
	else
	{
		// Contorno
		{
			fill (#000000);
			
			rect ((x - 13 * zoom), (y + 8 * zoom), (3 * zoom), (3 * zoom));
			rect ((x - 12 * zoom), (y + 7 * zoom), (3 * zoom), (3 * zoom));
			rect ((x - 11 * zoom), (y + 6 * zoom), (3 * zoom), (3 * zoom));
			
			rect ((x - 8 * zoom), (y + 9 * zoom), (3 * zoom), (2 * zoom));
			rect ((x - 5 * zoom), (y + 9 * zoom), zoom, zoom);
			
			rect ((x + 2 * zoom), (y + 9 * zoom), (3 * zoom), (2 * zoom));
			rect ((x + 5 * zoom), (y + 9 * zoom), zoom, zoom);
			
			rect ((x + 7 * zoom), (y + 9 * zoom), zoom, zoom);
			rect ((x + 8 * zoom), (y + 8 * zoom), (3 * zoom), (3 * zoom));
		}
		
		// Preenchimento
		{
			fill (#999999);
			
			rect ((x - 11 * zoom), (y + 7 * zoom), zoom, zoom);
			rect ((x - 12 * zoom), (y + 8 * zoom), (3 * zoom), zoom);
			rect ((x - 12 * zoom), (y + 9 * zoom), (2 * zoom), zoom);
			
			rect ((x - 7 * zoom), (y + 9 * zoom), (2 * zoom), zoom);
			
			rect ((x + 3 * zoom), (y + 9 * zoom), (2 * zoom), zoom);
			
			rect ((x + 8 * zoom), (y + 8 * zoom), (2 * zoom), (2 * zoom));
		}
	}
}

void rainbowBrush (int x, int y)
{
	mouse_x[0] -= speed * RAINBOW_SPEED_FACTOR;
	
	for (int i = 1; i < NUM_RAINBOW_SEGMENTS; i++)
	{
		mouse_x[i] -= speed * RAINBOW_SPEED_FACTOR;
		mouse_x[(i - 1)] = mouse_x[i];
		mouse_y[(i - 1)] = mouse_y[i];
	}

	mouse_x[(NUM_RAINBOW_SEGMENTS - 1)] = x;
	mouse_y[(NUM_RAINBOW_SEGMENTS - 1)] = y;
}

void drawRainbow()
{
	noFill();
	strokeWeight (3 * zoom);
	
	{
		stroke (rainbowColors[0]);			
		beginShape();
		for (int i = 0; i < NUM_RAINBOW_SEGMENTS; i++)
		{
			curveVertex (mouse_x[i], (mouse_y[i] - 8 * zoom));
			//curveVertex (mouse_x[(i + 1)], (mouse_y[(i + 1)] - 8 * zoom));
		}
		curveVertex (nyancat_x, (nyancat_y - 8 * zoom));
		endShape();
		
		stroke (rainbowColors[1]);
		beginShape();
		for (int i = 0; i < NUM_RAINBOW_SEGMENTS; i++)
		{
			curveVertex (mouse_x[i], (mouse_y[i] - 5 * zoom));
			//curveVertex (mouse_x[(i + 1)], (mouse_y[(i + 1)] - 5 * zoom));
		}
		curveVertex (nyancat_x, (nyancat_y - 5 * zoom));
		endShape();
		
		stroke (rainbowColors[2]);
		beginShape();
		for (int i = 0; i < NUM_RAINBOW_SEGMENTS; i++)
		{
			curveVertex (mouse_x[i], (mouse_y[i] - 2 * zoom));
			//curveVertex (mouse_x[(i + 1)], (mouse_y[(i + 1)] - 2 * zoom));
		}
		curveVertex (nyancat_x, (nyancat_y - 2 * zoom));
		endShape();
		
		stroke (rainbowColors[3]);
		beginShape();
		for (int i = 0; i < NUM_RAINBOW_SEGMENTS; i++)
		{
			curveVertex (mouse_x[i], (mouse_y[i] + zoom));
			//curveVertex (mouse_x[(i + 1)], (mouse_y[(i + 1)] + zoom));
		}
		curveVertex (nyancat_x, (nyancat_y + zoom));
		endShape();
		
		stroke (rainbowColors[4]);
		beginShape();
		for (int i = 0; i < NUM_RAINBOW_SEGMENTS; i++)
		{
			curveVertex (mouse_x[i], (mouse_y[i] + 4 * zoom));
			//curveVertex (mouse_x[(i + 1)], (mouse_y[(i + 1)] + 4 * zoom));
		}
		curveVertex (nyancat_x, (nyancat_y + 4 * zoom));
		endShape();
		
		stroke (rainbowColors[5]);
		beginShape();
		for (int i = 0; i < NUM_RAINBOW_SEGMENTS; i++)
		{
			curveVertex (mouse_x[i], (mouse_y[i] + 7 * zoom));
			//curveVertex (mouse_x[(i + 1)], (mouse_y[(i + 1)] + 7 * zoom));
		}
		curveVertex (nyancat_x, (nyancat_y + 7 * zoom));
		endShape();
	}
	
	noStroke();
}

void drawHeart (int x, int y, int colorIndex)
{
	//Contorno
	{
		fill (#000000);
		
		rect ((x + 2 * zoom), y, (2 * zoom), zoom);
		rect ((x + 7 * zoom), y, (2 * zoom), zoom);
		rect (x, (y + 2 * zoom), (11 * zoom), (3 * zoom));
		rect ((x + zoom), (y + zoom), (4 * zoom), zoom);
		rect ((x + 6 * zoom), (y + zoom), (4 * zoom), zoom);
		rect ((x + 5 * zoom), (y + 9 * zoom), zoom, zoom);
		rect ((x + 4 * zoom), (y + 8 * zoom), (3 * zoom), zoom);
		rect ((x + 3 * zoom), (y + 7 * zoom), (5 * zoom), zoom);
		rect ((x + 2 * zoom), (y + 6 * zoom), (7 * zoom), zoom);
		rect ((x + zoom), (y + 5 * zoom), (9 * zoom), zoom);
	}

	//Preenchimento
	{
		fill (rainbowColors [colorIndex]);
		
		rect ((x + 2 * zoom), (y + zoom), (2 * zoom), zoom);
		rect ((x + 7 * zoom), (y + zoom), (2 * zoom), zoom);
		rect ((x + zoom),(y + 2 * zoom), (4 * zoom), zoom);
		rect ((x + 6 * zoom), (y + 2 * zoom), (4 * zoom), zoom);
		rect ((x + zoom), (y + 3 * zoom), (9 * zoom), (2 * zoom));
		rect ((x + 2 * zoom), (y + 5 * zoom), (7 * zoom), zoom);
		rect ((x + 3 * zoom), (y + 6 * zoom), (5 * zoom), zoom);
		rect ((x + 4 * zoom), (y + 7 * zoom), (3 * zoom), zoom);
		rect ((x + 5 * zoom), (y + 8 * zoom), zoom, zoom);
	}
}

/*void drawShuriken(int x, int y, int frame)
{
	int pixelSize = 3;
	
	if (frame == 1)
	{
		// Contorno
		{
			fill (#000000);
			
			//rect (x - 6 * zoom * pixelSize, y - 4 * zoom * pixelSize, 
			rect (x - 3 * zoom * pixelSize, y - 3 * zoom * pixelSize, 7 * zoom * pixelSize, 7 * zoom * pixelSize);
		}
	}
	else if (frame == 2)
	{
	}
	else
	{
		// Contorno
		{
			fill (#000000);
			
			rect (x - 8 * zoom * pixelSize, y, 17 * zoom * pixelSize, zoom * pixelSize);
			rect (x - 7 * zoom * pixelSize, y - zoom * pixelSize, 15 * zoom * pixelSize, 3 * zoom * pixelSize);
			rect (x - 5 * zoom * pixelSize, y - 2 * zoom * pixelSize, 11 * zoom * pixelSize, 5 * zoom * pixelSize);
			rect (x, y - 8 * zoom * pixelSize, zoom * pixelSize, 17 * zoom * pixelSize);
			rect (x - zoom * pixelSize, y - 7 * zoom * pixelSize, 3 * zoom * pixelSize, 15 * zoom * pixelSize);
			rect (x - 2 * zoom * pixelSize, y - 5 * zoom * pixelSize, 5 * zoom * pixelSize, 11 * zoom * pixelSize);
		}
		
		// Preenchimento
		{
			fill (#999999);
			
			rect (x - 7 * zoom * pixelSize, y, 15 * zoom * pixelSize, zoom * pixelSize);
			rect (x - 5 * zoom * pixelSize, y - zoom * pixelSize, 11 * zoom * pixelSize, 3 * zoom * pixelSize);
			rect (x, y - 7 * zoom * pixelSize, zoom * pixelSize, 15 * zoom * pixelSize);
			rect (x - zoom * pixelSize, y - 5 * zoom * pixelSize, 3 * zoom * pixelSize, 11 * zoom * pixelSize);
			
			fill (#666666);
			
			rect (x - zoom * pixelSize, y - zoom * pixelSize, 3 * zoom * pixelSize, 3 * zoom * pixelSize);
			
			fill (#000000);
			
			rect (x - zoom * pixelSize, y - zoom * pixelSize, zoom * pixelSize, zoom * pixelSize);
			rect (x + zoom * pixelSize, y - zoom * pixelSize, zoom * pixelSize, zoom * pixelSize);
			rect (x - zoom * pixelSize, y + zoom * pixelSize, zoom * pixelSize, zoom * pixelSize);
			rect (x + zoom * pixelSize, y + zoom * pixelSize, zoom * pixelSize, zoom * pixelSize);
		}
	}
}*/

/*void drawShuriken (int x, int y, int frame, int pixelSize)
{
	if (frame == 1)
	{
		//contorno
		{
			fill (0);
			
			rect ((x + 7 * pixelSize), y, pixelSize, (15 * pixelSize));
			rect ((x + 6 * pixelSize), (y + pixelSize), (3 * pixelSize), (13 * pixelSize));
			rect ((x + 5 * pixelSize), (y + 3 * pixelSize), (5 * pixelSize), (9 * pixelSize));
			rect (x, (y + 7 * pixelSize), (15 * pixelSize), pixelSize);
			rect ((x + pixelSize), (y + 6 * pixelSize), (13 * pixelSize), (3 * pixelSize));
			rect ((x + 3 * pixelSize), (y + 5 * pixelSize), (9 * pixelSize), (5 * pixelSize));
		}
		
		//preenchimento
		{
			fill (200);
			
			rect ((x + 7 * pixelSize), (y + pixelSize), pixelSize, (13 * pixelSize));
			rect ((x + 6 * pixelSize), (y + 3 * pixelSize), (3 * pixelSize), (9 * pixelSize));
			rect ((x + pixelSize), (y + 7 * pixelSize), (13 * pixelSize), pixelSize);
			rect ((x + 3 * pixelSize), (y + 6 * pixelSize), (9 * pixelSize), (3 * pixelSize));
		}
		
		//centro
		{
			fill (100);
			
			rect ((x + 6 * pixelSize), (y + 6 * pixelSize), (3 * pixelSize), (3 * pixelSize));
		}
		
		//pontinhos
		{
			fill (0);
			
			rect ((x + 6 * pixelSize), (y + 6 * pixelSize), pixelSize, pixelSize);
			rect ((x + 8 * pixelSize), (y + 6 * pixelSize), pixelSize, pixelSize);
			rect ((x + 6 * pixelSize), (y + 8 * pixelSize), pixelSize, pixelSize);
			rect ((x + 8 * pixelSize), (y + 8 * pixelSize), pixelSize, pixelSize);   
		}    
	}

/*	else if (frame == 2)
	{
		//contorno
		{
			fill (0);
			
			rect ((x + 2 * pixelSize), y, (2 * pixelSize), (5 * pixelSize));
			rect ((x + 4 * pixelSize), (y + pixelSize), pixelSize, (2 * pixelSize));
			rect ((x + 5 * pixelSize), (y + 2 * pixelSize), pixelSize, pixelSize);
			rect ((x + 3 * pixelSize), (y + 3 * pixelSize), (7 * pixelSize), (7 * pixelSize));
			rect ((x + 2 * pixelSize), (y + 6 * pixelSize), (3 * pixelSize), (5 * pixelSize));
			rect ((x + pixelSize), (y + 9 * pixelSize), pixelSize, (2 * pixelSize));
			rect (x, (y + 10 * pixelSize), pixelSize, pixelSize);
			rect ((x + 7 * pixelSize), (y + 2 * pixelSize), (6 * pixelSize), (2 * pixelSize));
			rect ((x + 10 * pixelSize), (y + 4 * pixelSize), (2 * pixelSize), pixelSize);
			rect ((x + 10 * pixelSize), (y + 5 * pixelSize), pixelSize, pixelSize);
			rect ((x + 6 * pixelSize), (y + 8 * pixelSize), (5 * pixelSize), (3 * pixelSize));
			rect ((x + 7 * pixelSize), (y + 11 * pixelSize), (4 * pixelSize), pixelSize);
			rect ((x + 10 * pixelSize), (y + 12 * pixelSize), pixelSize, pixelSize
		}
		
		//preenchimento
		{
			fill (200);
			
			rect ((x + 3 * pixelSize), (y + pixelSize), pixelSize, (4 * pixelSize));
			rect ((x + 3 * pixelSize), (y + 2 * pixelSize), (2 * pixelSize), pixelSize);
			rect ((x + 3 * pixelSize), (y + 3 * pixelSize), (3 * pixelSize), pixelSize);
			rect ((x + 4 * pixelSize), (y + 4 * pixelSize), (5 * pixelSize), (5 * pixelSize));
			rect ((x + 7 * pixelSize), (y + 3 * pixelSize), (5 * pixelSize), pixelSize);
			rect ((x + 9 * pixelSize), (y + 4 * pixelSize), pixelSize, (2 * pixelSize));
			rect ((x + 3 * pixelSize), (y + 7 * pixelSize), pixelSize, (2 * pixelSize));
			rect ((x + 2 * pixelSize), (y + 9 * pixelSize), (3 * pixelSize), pixelSize);
			rect ((x + 8 * pixelSize), (y + 8 * pixelSize), (2 * pixelSize), (3 * pixelSize));
			rect ((x + 7 * pixelSize), (y + 9 * pixelSize), pixelSize, pixelSize);
		}
		
		//centro
		{
			fill (100);
			
			rect ((x + 6 * pixelSize), (y + 6 * pixelSize), pixelSize, pixelSize);
		}
		
		//pontinhos
		{
			fill (0);
			
			rect ((x + 6 * pixelSize), (y + 5 * pixelSize), pixelSize, pixelSize);
			rect ((x + 5 * pixelSize), (y + 6 * pixelSize), pixelSize, pixelSize);
			rect ((x + 7 * pixelSize), (y + 6 * pixelSize), pixelSize, pixelSize);
			rect ((x + 6 * pixelSize), (y + 7 * pixelSize), pixelSize, pixelSize); 
		}
	}

	else if (frame == 3)
	{
		//contorno
		{
			fill (0);
			
			rect (x, (y + 2 * pixelSize), (6 * pixelSize), (2 * pixelSize));
			rect ((x + pixelSize), (y + 4 * pixelSize), (2 * pixelSize), pixelSize);
			rect ((x + 5 * pixelSize), (y + 2 * pixelSize), pixelSize, pixelSize);
			rect ((x + 3 * pixelSize), (y + 3 * pixelSize), (7 * pixelSize), (7 * pixelSize));
			rect ((x + 9 * pixelSize), y, (2 * pixelSize), (5 * pixelSize));
			rect ((x + 8 * pixelSize), (y + pixelSize), pixelSize, (2 * pixelSize));
			rect ((x + 7 * pixelSize), (y + 2 * pixelSize), pixelSize, pixelSize);
			rect ((x + 8 * pixelSize), (y + 6 * pixelSize), (3 * pixelSize), (5 * pixelSize));
			rect ((x + 11 * pixelSize), (y + 9 * pixelSize), pixelSize, (2 * pixelSize));
			rect ((x + 12 * pixelSize), (y + 10 * pixelSize), pixelSize, pixelSize);
			rect ((x + 2 * pixelSize), (y + 8 * pixelSize), (5 * pixelSize), (3 * pixelSize));
			rect ((x + 2 * pixelSize), (y + 11 * pixelSize), (4 * pixelSize), pixelSize);
			rect ((x + 2 * pixelSize), (y + 12 * pixelSize), pixelSize, pixelSize);
			rect ((x + 2 * pixelSize), (y + 5 * pixelSize), pixelSize, pixelSize);
		}
		
		//preenchimento
		{
			fill (200);
			
			rect ((x + pixelSize), (y + 3 * pixelSize), (5 * pixelSize), pixelSize);
			rect ((x + 3 * pixelSize), (y + 4 * pixelSize), pixelSize, (2 * pixelSize));
			rect ((x + 4 * pixelSize), (y + 4 * pixelSize), (5 * pixelSize), (5 * pixelSize));
			rect ((x + 3 * pixelSize), (y + 8 * pixelSize), (2 * pixelSize), (3 * pixelSize));
			rect ((x + 5 * pixelSize), (y + 9 * pixelSize), pixelSize, pixelSize);
			rect ((x + 8 * pixelSize), (y + 9 * pixelSize), (3 * pixelSize), pixelSize);
			rect ((x + 9 * pixelSize), (y + 7 * pixelSize), pixelSize, (2 * pixelSize));
			rect ((x + 9 * pixelSize), (y + pixelSize), pixelSize, (4 * pixelSize));
			rect ((x + 7 * pixelSize), (y + 3 * pixelSize), (3 * pixelSize), pixelSize);
			rect ((x + 8 * pixelSize), (y + 2 * pixelSize), (2 * pixelSize), pixelSize);
		}
		
		//centro
		{
			fill (100);
			
			rect ((x + 6 * pixelSize), (y + 6 * pixelSize), pixelSize, pixelSize);
		}
		
		//pontinhos
		{
			fill (0);
			
			rect ((x + 6 * pixelSize), (y + 5 * pixelSize), pixelSize, pixelSize);
			rect ((x + 5 * pixelSize), (y + 6 * pixelSize), pixelSize, pixelSize);
			rect ((x + 7 * pixelSize), (y + 6 * pixelSize), pixelSize, pixelSize);
			rect ((x + 6 * pixelSize), (y + 7 * pixelSize), pixelSize, pixelSize); 
		}    
	}
}*/

void drawTitle (int frame)
{
	{
		fill (rainbowColors [(frame - 1) % 6]);
		//N
		rect (width / 2 - 252, height / 2 - 136, 35, 19);
		rect (width / 2 - 182, height / 2 - 136, 35, 19);
		//Y
		rect (width / 2 - 118, height / 2 - 136, 35, 19);
		rect (width / 2 - 48, height / 2 - 136, 35, 19);
		//A
		rect (width / 2 + 38, height / 2 - 136, 76, 19);
		//N
		rect (width / 2 + 163, height / 2 - 136, 35, 19);
		rect (width / 2 + 233, height / 2 - 136, 35, 19);
		//C
		rect (width / 2 - 208, height / 2 + 16, 76, 19);
		//A
		rect (width / 2 - 65, height / 2 + 16, 76, 19);
		//T
		rect (width / 2 + 57, height / 2 + 16, 108, 19);
		//!
		rect (width / 2 + 187, height / 2 + 16, 35, 19);
		
		fill (rainbowColors [(frame % 6)]);
		//N
		rect (width / 2 - 252, height / 2 - 117, 105, 19);
		//Y
		rect (width / 2 - 118, height / 2 - 117, 40, 19);
		rect (width / 2 - 53, height / 2 - 117, 40, 19);
		//A
		rect (width / 2 + 18, height / 2 - 117, 42, 19);
		rect (width / 2 + 88, height / 2 - 117, 40, 19);
		//N
		rect (width / 2 + 163, height / 2 - 117, 105, 19);
		//C
		rect (width / 2 - 225, height / 2 + 35, 40, 19);
		rect (width / 2 - 150, height / 2 + 35, 35, 19);
		//A
		rect (width / 2 - 85, height / 2 + 35, 42, 19);
		rect (width / 2 - 15, height / 2 + 35, 40, 19);
		//T
		rect (width / 2 + 95, height / 2 + 35, 35, 19);
		//!
		rect (width / 2 + 187, height / 2 + 35, 35, 19);
		
		fill (rainbowColors [(frame + 1) % 6]);
		//N
		rect (width / 2 - 252, height / 2 - 100, 105, 19);
		//Y
		rect (width / 2 - 118, height / 2 - 100, 105, 19);
		//A
		rect (width / 2 + 18, height / 2 - 100, 42, 19);
		rect (width / 2 + 88, height / 2 - 100, 40, 19);
		//N
		rect (width / 2 + 163, height / 2 - 100, 105, 19);
		//C
		rect (width / 2 - 225, height / 2 + 52, 40, 19);
		//A
		rect (width / 2 - 85, height / 2 + 52, 42, 19);
		rect (width / 2 - 15, height / 2 + 52, 40, 19);
		//T
		rect (width / 2 + 95, height / 2 + 52, 35, 19);
		//!
		rect (width / 2 + 187, height / 2 + 52, 35, 19);
		
		fill (rainbowColors [(frame + 2) % 6]);
		//N
		rect (width / 2 - 252, height / 2 - 83, 105, 19);
		//Y
		rect (width / 2 - 110, height / 2 - 83, 81, 19);
		//A
		rect (width / 2 + 18, height / 2 - 83, 110, 19);
		//N
		rect (width / 2 + 163, height / 2 - 83, 105, 19);
		//C
		rect (width / 2 - 225 , height / 2 + 69, 40, 19);
		//A
		rect (width / 2 - 85, height / 2 + 69, 110, 19);
		//T
		rect (width / 2 + 95, height / 2 + 69, 35, 19);
		//!
		rect (width / 2 + 187, height / 2 + 69, 35, 19);
		
		fill (rainbowColors [(frame + 3) % 6]);
		//N
		rect (width / 2 - 252, height / 2 - 66, 105, 19);
		//Y
		rect (width / 2 - 95, height / 2 - 66, 48, 19);
		//A
		rect (width / 2 + 18, height / 2 - 66, 110, 19);
		//N
		rect (width / 2 + 163, height / 2 - 66, 105, 19);
		//C
		rect (width / 2 - 225, height / 2 + 86, 40, 19);
		rect (width / 2 - 150, height / 2 + 86, 35, 19);
		//A
		rect (width / 2 - 85, height / 2 + 86, 110, 19);
		//T
		rect (width / 2 + 95, height / 2 + 86, 35, 19);
		
		fill (rainbowColors [(frame + 4) % 6]);
		//N
		rect (width / 2 - 252, height / 2 - 47, 105, 16);
		//Y
		rect (width / 2 - 95, height / 2 - 47, 48, 16);
		//A
		rect (width / 2 + 18, height / 2 - 47, 110, 16);
		//N
		rect (width / 2 + 163, height / 2 - 47, 105, 16);
		//C
		rect (width / 2 - 208, height / 2 + 103, 76, 19);
		//A
		rect (width / 2 - 85, height / 2 + 103, 110, 19);
		//T
		rect (width / 2 + 95, height / 2 + 103, 35, 19);
		//!
		rect (width / 2 + 187, height / 2 + 103, 35, 19);
	}

	image (imgTitle, title_x, title_y);
}

void drawPlayButton (int x, int y, int pixelSize, int colorIndex)
{
	int this_width, this_height;
	color fillColor;
	
	this_width  = 39 * pixelSize;
	this_height = 7 * pixelSize;
	
	if (dist (mouseX, y, x, y) < (this_width / 2) && dist (x, mouseY, x, y) < (this_height / 2))
	{
		fillColor = color (rainbowColors [colorIndex]);
	}
	else
	{
		fillColor = color (#FFFFFF);
	}
	
	// Jogar
	{
		upperJ ((x - this_width / 2), (y - this_height / 2), pixelSize, fillColor);
		lowerO ((x - this_width / 2 + 8 * pixelSize), (y - this_height / 2), pixelSize, fillColor);
		lowerG ((x - this_width / 2 + 16 * pixelSize), (y - this_height / 2), pixelSize, fillColor);
		lowerA ((x - this_width / 2 + 24 * pixelSize), (y - this_height / 2), pixelSize, fillColor);
		lowerR ((x - this_width / 2 + 32 * pixelSize), (y - this_height / 2), pixelSize, fillColor);
	}
}

void drawReady (int x, int y, int pixelSize)
{
	int this_width, this_height;
	
	this_width  = 63 * pixelSize;
	this_height = 7 * pixelSize;
	
	// Preparar
	{
		upperP ((x - this_width / 2), (y - this_height / 2), pixelSize, color (#FFFFFF));
		lowerR ((x - this_width / 2 + 8 * pixelSize), (y - this_height / 2), pixelSize, color (#FFFFFF));
		lowerE ((x - this_width / 2 + 16 * pixelSize), (y - this_height / 2), pixelSize, color (#FFFFFF));
		lowerP ((x - this_width / 2 + 24 * pixelSize), (y - this_height / 2), pixelSize, color (#FFFFFF));
		lowerA ((x - this_width / 2 + 32 * pixelSize), (y - this_height / 2), pixelSize, color (#FFFFFF));
		lowerR ((x - this_width / 2 + 40 * pixelSize), (y - this_height / 2), pixelSize, color (#FFFFFF));
		lowerA ((x - this_width / 2 + 48 * pixelSize), (y - this_height / 2), pixelSize, color (#FFFFFF));
		lowerR ((x - this_width / 2 + 56 * pixelSize), (y - this_height / 2), pixelSize, color (#FFFFFF));
	}
}

void drawGo (int x, int y, int pixelSize)
{
	int this_width, this_height;
	
	this_width  = 15 * pixelSize;
	this_height = 7 * pixelSize;
	
	// Já!
	{
		upperJ ((x - this_width / 2), (y - this_height / 2), pixelSize, color (#FFFFFF));
		lowerAAcute ((x - this_width / 2 + 8 * pixelSize), (y - this_height / 2), pixelSize, color (#FFFFFF));
		//lowerE ((x - this_width / 2 + 16 * pixelSize), (y - this_height / 2), pixelSize, color (#FFFFFF));
	}
}

void drawPause (int x, int y, int pixelSize)
{
	int this_width, this_height;
	
	this_width  = 39 * pixelSize;
	this_height = 7 * pixelSize;
	
	rectMode (CENTER);
	fill (rainbowColors[0]);
	rect ((width / 2), (height / 2 - 15 / 4 * pixelSize), width, (3 / 2 * pixelSize));
	fill (rainbowColors[1]);
	rect ((width / 2), (height / 2 - 9 / 4 * pixelSize), width, (3 / 2 * pixelSize));
	fill (rainbowColors[2]);
	rect ((width / 2), (height / 2 - 3 / 4 * pixelSize), width, (3 / 2 * pixelSize));
	fill (rainbowColors[3]);
	rect ((width / 2), (height / 2 + 3 / 4 * pixelSize), width, (3 / 2 * pixelSize));
	fill (rainbowColors[4]);
	rect ((width / 2), (height / 2 + 9 / 4 * pixelSize), width, (3 / 2 * pixelSize));
	fill (rainbowColors[5]);
	rect ((width / 2), (height / 2 + 15 / 4 * pixelSize), width, (3 / 2 * pixelSize));
	rectMode (CORNER);
	
	// Pausa
	{
		upperP ((x - this_width / 2), (y - this_height / 2), pixelSize, color (#FFFFFF));
		lowerA ((x - this_width / 2 + 8 * pixelSize), (y - this_height / 2), pixelSize, color (#FFFFFF));
		lowerU ((x - this_width / 2 + 16 * pixelSize), (y - this_height / 2), pixelSize, color (#FFFFFF));
		lowerS ((x - this_width / 2 + 24 * pixelSize), (y - this_height / 2), pixelSize, color (#FFFFFF));
		lowerA ((x - this_width / 2 + 32 * pixelSize), (y - this_height / 2), pixelSize, color (#FFFFFF));
	}
}