class Hexagons
{
  PVector pos;
  float sizeOfHex = width * 0.1;
  float theta;
  int No_Points = 6;
  
  Hexagons(float theta, int No_Points)
  {
    pos = new PVector(x,y);
    this.theta =  theta;
    this.No_Points = No_Points;
  }
  
  void create()
  {
    fill(0);
    polygon(pos.x, pos.y, sizeOfHex, No_Points);
  }
  void render()
  {
    pushMatrix();
    translate(width*0.1, height*0.1);
    rotate(frameCount / -100.0);
    popMatrix();
  }
}