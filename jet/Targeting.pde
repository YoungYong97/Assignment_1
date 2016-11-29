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
  
  void draw(float xt, float yt)
  {
    rectMode(CENTER);
    noFill();
    stroke(255,0,0);
    rect(xt, yt, size, size);
    line(xt-size, yt, xt+size, yt);
    line(xt, yt-size, xt, yt+size);
    stroke(0, 0, 255);
    rect(x, y, xSize/1.5, ySize/1.5);
    stroke(0, 0, 255);
    rect(x, y, xSize, ySize);
  }
}