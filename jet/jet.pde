Throttle throttle;
Targeting target;
Weapons weapon1, weapon2, weapon3, weapon4;
Switch switch1;
float starPercent = 0.00001;
float theta = 0;

void setup()
{
  fullScreen();
  noCursor();
  throttle = new Throttle(width*0.1, height*0.9, 0.01*width, 0.3*height);
  target = new Targeting(width/2, height/2, width*0.02, width*0.9, height*0.9);
  weapon1 = new Weapons(width*0.875, height*0.8, width*0.1, height*0.1);
  weapon2 = new Weapons(width*0.875, height*0.65, width*0.1, height*0.1);
  weapon3 = new Weapons(width*0.875, height*0.2, width*0.1, height*0.1);
  weapon4 = new Weapons(width*0.875, height*0.35, width*0.1, height*0.1);
  switch1 = new Switch(width*0.9, height*0.9, width*0.02, height*0.02);
  
}

void draw()
{
  background(0);
  throttle.draw();
  target.draw(mouseX, mouseY);
  weapon1.draw(1);
  weapon2.draw(2);
  weapon3.draw(3);
  weapon4.draw(4);
  //drawStars();
  square();
  switch1.draw();
  stroke(0,0,255);
  
  
}

void keyPressed()
{
  if (key == 'w' && throttle.tHeight < throttle.maxHeight)
  {
    if ( throttle.tHeight > 0.9* throttle.maxHeight)
    {
      throttle.tHeight += 5;
    }
    else if ( throttle.tHeight > 0.5* throttle.maxHeight)
    {
      throttle.tHeight += 7;
    }
    else
    {
      throttle.tHeight += 10;
    }
  }
  
  if(key == 'k')
  {
    weapon1.select();
    weapon1.draw(1);
  }
  if(key == 'i')
  {
    weapon2.select();
    weapon2.draw(2);
  }
    if(key == 'o')
  {
    weapon3.select();
    weapon3.draw(3);
  }
  if(key == 'l')
  {
    weapon4.select();
    weapon4.draw(4);
  }
  
  if(key == 'b')
  {
    draw();
  }
}