class Throttle
{
  float x;
  float y;
  float tWidth;
  float tHeight;
  float maxHeight;
  
  Throttle(float x, float y, float tWidth, float maxHeight)
  {
    this.x = x;
    this.y = y;
    this.tWidth = tWidth;
    this.maxHeight = maxHeight;
    
    tHeight = 5;
  }
  
  void draw()
  {
    noFill();
    rectMode(CORNER);
    noStroke();
    if (tHeight > 0.7*maxHeight)
    {
      fill(255, 0, 0);
    }
    else if (tHeight > 0.5*maxHeight)
    {
      fill(255, 255, 0);
    }
    else
    {
      fill(0, 255, 0);
    }
    rect(x, y, tWidth, -tHeight);
    
    if ( tHeight > 5 )
    {
      tHeight --;
    }
  }
}