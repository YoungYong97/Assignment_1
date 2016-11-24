void setup()
{
  size(800, 800);  // size always goes first!
  surface.setResizable(true);
  background(0);
}

float cs = 50;
float starPercent = 0.0001;
float x,y;
Hexagons hex1 = new Hexagons(2,3);

void draw()
{
  drawShit();
  drawHex();
  hex1.create();
  hex1.render();
}