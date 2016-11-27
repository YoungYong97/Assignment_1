/* cs == height/2)
  {
    cs = 10;
  }
  
  if (frameCount % 30 == 0) {
    background(0);
    drawStars();
    fill(255, 60);
    noStroke();
    rect(0, 0, width, height);
  }
}

void drawStars()
{
  for(int x = 0; x < width; x++)
  {
    for(int y = 0; y < height; y++)
    {
      if (random(0, 1) < starPercent)
      {
        stroke(255);
        strokeWeight(4);
        point(x, y);
      }
    }
  }
}

void polygon(float x, float y, float radius, int npoints) {
  float angle = TWO_PI / npoints;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius;
    float sy = y + sin(a) * radius;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}

void drawHex()
{
  pushMatrix();
  translate(width*0.1, height*0.1);
  rotate(frameCount / -100.0);
  fill(0);
  polygon(0, 0, 70, 6);
  popMatrix();
}*/