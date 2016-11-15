void drawShit()
{
  noStroke();
  fill(0);
  ellipse(width/2, height/2, cs++, cs++);
  if(cs == width/2 || cs == height/2)
  {
    cs = 10;
  }
  
  if (frameCount % 30 == 0) {
    background(0);
    drawStars();
    fill(255, 60);
    noStroke();
    ellipse(width/2, height/2, width, height);
  }
}

void drawStars()
{
  for(int x = 0; x < width; x++)
  {
    for(int y = 0; y < height; y++)
    {
      if (random(0, 1) < starPercent)
      {
        stroke(255);
        strokeWeight(4);
        point(x, y);
      }
    }
  }
}