Throttle t1;

void setup()
{
  fullScreen();
  
  t1 = new Throttle(width*0.1, height*0.9, 0.1*width, 0.5*height);
}

void draw()
{
  background(0);
  t1.draw();
}

void keyPressed()
{
  if (key == ' ' && t1.tHeight < t1.maxHeight)
  {
    t1.tHeight += 10;
  }
}





















/*void setup()
{
  size(800, 800);  // size always goes first!
  surface.setResizable(true);
  background(0);
}

float cs = 50;
float starPercent = 0.0001;
float x,y;
//Hexagons hex1 = new Hexagons(2,3);

void draw()
{
  drawShit();
  drawHex();
//  hex1.create();
//  hex1.render();
}
*/