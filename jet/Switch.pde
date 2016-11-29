class Switch
{
  float x;
  float y;
  float sWidth;
  float sHeight;
  
  Switch(float x, float y, float sWidth, float sHeight)
  {
    this.x = x;
    this.y = y;
    this.sWidth = sWidth;
    this.sHeight = sHeight;
  }
  
  void draw()
  {
    noFill();
    rect(x,y,sWidth,sHeight);
    textSize(10);
    text("SWITCH",x-10,y);
  }
  
  void auto()
  {
    
  }
}