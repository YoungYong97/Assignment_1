/*class Hexagons
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
    theta = TWO_PI / No_Points;
    beginShape();
    for (float a = 0; a < TWO_PI; a += theta) 
    {
      float sx = x + cos(a) * radius;
      float sy = y + sin(a) * radius;
      vertex(sx, sy);
    }
    endShape(CLOSE);
  }
  
  void render()
  {
    fill(0);
    polygon(pos.x, pos.y, sizeOfHex, No_Points);
  }
  void display()
  {
    pushMatrix();
    translate(width*0.1, height*0.1);
    rotate(frameCount / -100.0);
    popMatrix();
  }
}*/