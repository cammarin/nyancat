// Letras

void upperJ (int x, int y, int pixelSize, color fillColor)
{
	rectMode (CORNER);

	//Contorno
	{
		fill (#000000);
		
		rect ((x + 2 * pixelSize), y, (5 * pixelSize), (3 * pixelSize));
		rect (x, (y + 3 * pixelSize), (6 * pixelSize), (3 * pixelSize));
		rect ((x + pixelSize), (y + 6 * pixelSize), (4 * pixelSize), pixelSize);
	}
	
	// Preenchimento
	{
		fill (fillColor);
		
		rect ((x + 3 * pixelSize), (y + pixelSize), (3 * pixelSize), pixelSize);
		rect ((x + 4 * pixelSize), (y + 2 * pixelSize), pixelSize, (3 * pixelSize));
		rect ((x + pixelSize), (y + 4 * pixelSize), pixelSize, pixelSize);
		rect ((x + 2 * pixelSize), (y + 5 * pixelSize), (2 * pixelSize), pixelSize);
	}
}

void upperP (int x, int y, int pixelSize, color fillColor)
{
	rectMode (CORNER);

	//Contorno
	{
		fill (#000000);
		
		rect (x, y, (6 * pixelSize), (5 * pixelSize));
		rect (x, (y + pixelSize), (3 * pixelSize), (6 * pixelSize));
		rect ((x + 6 * pixelSize), (y + pixelSize), pixelSize, (3 * pixelSize));
	}
	
	// Preenchimento
	{
		fill (fillColor);
		
		rect ((x + pixelSize), (y + pixelSize), (4 * pixelSize), pixelSize);
		rect ((x + pixelSize), (y + 2* pixelSize), pixelSize, (4 * pixelSize));
		rect ((x + 5 * pixelSize), (y + 2 * pixelSize), pixelSize, pixelSize);
		rect ((x + 2 * pixelSize), (y + 3 * pixelSize), (3 * pixelSize), pixelSize);
	}
}

void lowerA (int x, int y, int pixelSize, color fillColor)
{
	rectMode (CORNER);

	//Contorno
	{
		fill (#000000);

		rect (x, y, (6 * pixelSize), (6 * pixelSize));
		rect ((x + pixelSize), (y + pixelSize), (6 * pixelSize), (6 * pixelSize));
	}
	
	// Preenchimento
	{
		fill (fillColor);
		
		rect ((x + pixelSize), (y + pixelSize), (4 * pixelSize), pixelSize);
		rect ((x + 5 * pixelSize), (y + 2 * pixelSize), pixelSize, (4 * pixelSize));
		rect ((x + 2 * pixelSize), (y + 3 * pixelSize), (3 * pixelSize), pixelSize);
		rect ((x + pixelSize), (y + 4 * pixelSize), pixelSize, pixelSize);
		rect ((x + 2 * pixelSize), (y + 5 * pixelSize), (3 * pixelSize), pixelSize);
	}
}

void lowerE (int x, int y, int pixelSize, color fillColor)
{
	rectMode (CORNER);

	//Contorno
	{
		fill (#000000);
		
		rect ((x + pixelSize), (y + pixelSize), (6 * pixelSize), (6 * pixelSize));
		rect ((x + pixelSize), y, (5 * pixelSize), pixelSize);
		rect (x, (y + pixelSize), pixelSize, (5 * pixelSize));	
	}
	
	// Preenchimento
	{
		fill (fillColor);
		
		rect ((x + 2 * pixelSize), (y + pixelSize), (3 * pixelSize), pixelSize);
		rect ((x + pixelSize), (y + 2 * pixelSize), pixelSize, (3 * pixelSize));
		rect ((x + 5 * pixelSize), (y + 2 * pixelSize), pixelSize, pixelSize);
		rect ((x + 2 * pixelSize), (y + 3 * pixelSize), (3 * pixelSize), pixelSize);
		rect ((x + 2 * pixelSize), (y + 5 * pixelSize), (4 * pixelSize), pixelSize);
	}
}

void lowerG (int x, int y, int pixelSize, color fillColor)
{
	rectMode (CORNER);

	//Contorno
	{
		fill (#000000);
		
		rect (x, (y + pixelSize), (6 * pixelSize), (6 * pixelSize));
		rect ((x + pixelSize), y, (5 * pixelSize), pixelSize);
		rect ((x + 6 * pixelSize), (y + pixelSize), pixelSize, (5 * pixelSize));
	}
	
	// Preenchimento
	{
		fill (fillColor);
		
		rect ((x + 2 * pixelSize), (y + pixelSize), (3 * pixelSize), pixelSize);
		rect ((x + pixelSize), (y + 2 * pixelSize), pixelSize, pixelSize);
		rect ((x + 5 * pixelSize), (y + 2 * pixelSize), pixelSize, (3 * pixelSize));
		rect ((x + 2 * pixelSize), (y + 3 * pixelSize), (3 * pixelSize), pixelSize);
		rect ((x + pixelSize), (y + 5 * pixelSize), (4 * pixelSize), pixelSize);
	}
}

void lowerO (int x, int y, int pixelSize, color fillColor)
{
	rectMode (CORNER);

	//Contorno
	{
		fill (#000000);
		
		rect (x, (y + 2 * pixelSize), (7 * pixelSize), (3 * pixelSize));
		rect ((x + pixelSize), (y + pixelSize), (5 * pixelSize), (5 * pixelSize));
		rect ((x + 2 * pixelSize), y, (3 * pixelSize), (7 * pixelSize));
	}
	
	// Preenchimento
	{
		fill (fillColor);
		
		rect ((x + 3 * pixelSize), (y + pixelSize), pixelSize, pixelSize);
		rect ((x + 2 * pixelSize), (y + 2 * pixelSize), pixelSize, pixelSize);
		rect ((x + 4 * pixelSize), (y + 2 * pixelSize), pixelSize, pixelSize);
		rect ((x + pixelSize), (y + 3 * pixelSize), pixelSize, pixelSize);
		rect ((x + 5 * pixelSize), (y + 3 * pixelSize), pixelSize, pixelSize);
		rect ((x + 2 * pixelSize), (y + 4 * pixelSize), pixelSize, pixelSize);
		rect ((x + 4 * pixelSize), (y + 4 * pixelSize), pixelSize, pixelSize);
		rect ((x + 3 * pixelSize), (y + 5 * pixelSize), pixelSize, pixelSize);
	}
}

void lowerP (int x, int y, int pixelSize, color fillColor)
{
	rectMode (CORNER);

	//Contorno
	{
		fill (#000000);
		
		rect (x, y, (6 * pixelSize), (6 * pixelSize));
		rect (x, (y + pixelSize), (3 * pixelSize), (6 * pixelSize));
		rect ((x + 6 * pixelSize), (y + pixelSize), pixelSize, (4 * pixelSize));
	}
	
	// Preenchimento
	{
		fill (fillColor);
		
		rect ((x + pixelSize), (y + pixelSize), (4 * pixelSize), pixelSize);
		rect ((x + pixelSize), (y + 2* pixelSize), pixelSize, (4 * pixelSize));
		rect ((x + 5 * pixelSize), (y + 2 * pixelSize), pixelSize, (2 * pixelSize));
		rect ((x + 2 * pixelSize), (y + 4 * pixelSize), (3 * pixelSize), pixelSize);
	}
}

void lowerR (int x, int y, int pixelSize, color fillColor)
{
	rectMode (CORNER);

	//Contorno
	{
		fill (#000000);
		
		rect (x, y, (6 * pixelSize), pixelSize);
		rect (x, (y + pixelSize), (7 * pixelSize), (3 * pixelSize));
		rect (x, (y + 4 * pixelSize), (3 * pixelSize), (3 * pixelSize));
	}
	
	// Preenchimento
	{
		fill (fillColor);
		
		rect ((x + pixelSize), (y + pixelSize), pixelSize, (5 * pixelSize));
		rect ((x + 3 * pixelSize), (y + pixelSize), (2 * pixelSize), pixelSize);
		rect ((x + 2 * pixelSize), (y + 2 * pixelSize), pixelSize, pixelSize);
		rect ((x + 5 * pixelSize), (y + 2 * pixelSize), pixelSize, pixelSize);
	}
}

void lowerS (int x, int y, int pixelSize, color fillColor)
{
	rectMode (CORNER);

	//Contorno
	{
		fill (#000000);

		rect (x, (y + pixelSize), (6 * pixelSize), (6 * pixelSize));
		rect ((x + pixelSize), y, (6 * pixelSize), (6* pixelSize));
	}
	
	// Preenchimento
	{
		fill (fillColor);
		
		rect ((x + 2 * pixelSize), (y + pixelSize), (4 * pixelSize), pixelSize);
		rect ((x + pixelSize), (y + 2 * pixelSize), pixelSize, pixelSize);
		rect ((x + 2 * pixelSize), (y + 3 * pixelSize), (3 * pixelSize), pixelSize);
		rect ((x + 5 * pixelSize), (y + 4 * pixelSize), pixelSize, pixelSize);
		rect ((x + pixelSize), (y + 5 * pixelSize), (4 * pixelSize), pixelSize);
	}
}

void lowerU (int x, int y, int pixelSize, color fillColor)
{
	rectMode (CORNER);

	//Contorno
	{
		fill (#000000);
		
		rect (x, y, (3 * pixelSize), (6 * pixelSize));
		rect ((x + pixelSize), (y + 3 * pixelSize), (6 * pixelSize), (4 * pixelSize));
		rect ((x + 4 * pixelSize), y, (3 * pixelSize), (7 * pixelSize));
	}
	
	// Preenchimento
	{
		fill (fillColor);
		
		rect ((x + pixelSize), (y + pixelSize), pixelSize, (4 * pixelSize));
		rect ((x + 2 * pixelSize), (y + 5 * pixelSize), (2 * pixelSize), pixelSize);
		rect ((x + 4 * pixelSize), (y + 4 * pixelSize), pixelSize, pixelSize);
		rect ((x + 5 * pixelSize), (y + pixelSize), pixelSize, (5 * pixelSize));
	}
}

void lowerAAcute (int x, int y, int pixelSize, color fillColor)
{
	rectMode (CORNER);

	//Contorno
	{
		fill (#000000);
		
		rect (x, y, (6 * pixelSize), (6 * pixelSize));
		rect ((x + pixelSize), (y + pixelSize), (6 * pixelSize), (6 * pixelSize));
		rect ((x + 3 * pixelSize), (y - 2 * pixelSize), (4 * pixelSize), (2 * pixelSize));
		rect ((x + 4 * pixelSize), (y - 3 * pixelSize), (3 * pixelSize), pixelSize);
	}
	
	// Preenchimento
	{
		fill (fillColor);
		
		rect ((x + pixelSize), (y + pixelSize), (4 * pixelSize), pixelSize);
		rect ((x + 2 * pixelSize), (y + 3 * pixelSize), (3 * pixelSize), pixelSize);
		rect ((x + pixelSize), (y + 4 * pixelSize), pixelSize, pixelSize);
		rect ((x + 2 * pixelSize), (y + 5 * pixelSize), (3 * pixelSize), pixelSize);
		rect ((x + 5 * pixelSize), (y + 2 * pixelSize), pixelSize, (4 * pixelSize));
		rect ((x + 4 * pixelSize), (y - pixelSize), pixelSize, pixelSize);
		rect ((x + 5 * pixelSize), (y - 2 * pixelSize), pixelSize, pixelSize);
	}
}