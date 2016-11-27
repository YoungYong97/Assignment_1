class Targeting
{
  float x;
  float y;
  float size;
  float xSize;
  float ySize;
  
  Targeting(float x, float y, float size, float xSize, float ySize)
  {
    this.x = x;
    this.y = y;
    this.size = size;
    this.xSize = xSize;
    this.ySize = ySize;
  }
  
  void draw()
  {
    rectMode(CENTER);
    noFill();
    stroke(255,0,0);
    rect(x, y, size, size);
    line(x-size, y, x+size, y);
    line(x, y-size, x, y+size);
    stroke(255, 255, 0);
    rect(x, y, xSize/1.5, ySize/1.5);
    stroke(0, 255, 0);
    rect(x, y, xSize, ySize);
  }
}