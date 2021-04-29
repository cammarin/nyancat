void ended()
{
	intro.play();
}

void stop()
{
	intro.pause();
	intro.currentTime = 0;
	
	song.pause();
	song.currentTime = 0;
}