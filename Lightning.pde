int startX=0;
int startY=150;
int endX=0;
int endY=150;
int stW= (int)(Math.random()*2+3);
void setup()
{
  size(900, 900);
  strokeWeight(stW);
  background((int)(Math.random()*25), (int)(Math.random()*25), (int)(Math.random()*25));
}
void draw()
{
  stroke((int)(Math.random()*25+169), (int)(Math.random()*25+191), (int)(Math.random()*50+39));
  while (startX<=width) {
    endX=startX+((int)(Math.random()*9));
    endY=startY+((int)(Math.random()*(-18))+9);
    line(startX, startY, endX, endY);
    startX=endX+1;
    startY=endY;
  }
}
void mousePressed()
{
  if(startY<+width){
  startX=0;
  startY=startY-5;
  endX=0;
  endY=150;
  }
  else{
    startY=0;
  }
}
