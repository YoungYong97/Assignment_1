Throttle throttle;
Targeting target;
float starPercent = 0.00001;


void setup()
{
  fullScreen();
  background(0);
  throttle = new Throttle(width*0.1, height*0.9, 0.01*width, 0.3*height);
  target = new Targeting(width/2, height/2, width*0.03, width*0.9, height*0.9);
}

void draw()
{
  line(width*0.2, height*0.2, width*0.8, height*0.8);
  line(width*0.2, height*0.8, width*0.8, height*0.2);
  
  throttle.draw();
  target.draw();
  drawStars();
}

void keyPressed()
{
  if (key == ' ' && throttle.tHeight < throttle.maxHeight)
  {
    if ( throttle.tHeight > 0.7* throttle.maxHeight)
    {
      throttle.tHeight += 3;
    }
    else if ( throttle.tHeight > 0.5* throttle.maxHeight)
    {
      throttle.tHeight += 5;
    }
    else
    {
      throttle.tHeight += 10;
    }
  }
}

void drawStars()
{
  if(frameCount % 30 == 0)
  {
    background(0);
    for(int x = 0; x < width; x++)
    {
      for(int y = 0; y < height; y++)
      {
        if (random(0, 1) < starPercent)
        {
          pushMatrix();
          stroke(255);
          strokeWeight(1);
          point(x, y);
          popMatrix();
        }
      }
    }
  }
}