void setup()
{
  size(800, 800);  // size always goes first!
  surface.setResizable(true);
  background(0);
}

float cs = 50;
float starPercent = 0.0001;

void draw()
{
  drawShit();
  drawHex();
}