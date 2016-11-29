class Weapons
{
  float size;
  float x;
  float y;
  float wWidth;
  float wHeight;
  
  Weapons(float x, float y, float wWidth, float wHeight)
  {
    this.x = x;
    this.y = y;
    this.wWidth = wWidth;
    this.wHeight = wHeight;
  }
  
  void draw(int opt)
  {
    stroke(255,255,0);
    if(opt == 1)
    {
      rect(x,y,wWidth,wHeight,20);
      ellipse(x, y, wWidth/2, wWidth/2);
    }
    else if(opt == 2)
    {
      rect(x,y,wWidth,wHeight,20);
      rect(x, y, wWidth/2, wWidth/2);
    }
    else if(opt == 3)
    {
      rect(x,y,wWidth,wHeight,20);
      rect(x, y, wWidth/2, wHeight/2);
    }
    else if(opt == 4)
    {
      rect(x,y,wWidth,wHeight,20);
      ellipse(x, y, wWidth/2, wHeight/2);
    }
  }
  
  void select()
  {
    fill(255);
  }
}