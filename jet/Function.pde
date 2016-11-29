void square()
{
  pushMatrix();
  noStroke();
  fill(150,255,255);
  translate(width*0.09, height*0.12);
  rotate(theta);
  textSize(40);
  rect(0,0,100,100, 20);
  fill(255,0,255);
  text("J.U.I",-40,10);
  theta += 0.01;
  popMatrix();
}