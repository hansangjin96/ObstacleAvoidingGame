class Text
{
  PFont font;
  float s;
  String ss = "FINISH!!";
  String sss = "COLLIDE!!";
  String ssss = "BALL GAME! \n\n Click=start \n w=up, \t a=left \n d=right, \t x=down \n s=stop \n q=scale down, \t e=scale up \n mouseX=shape \n mouseY=color, rotate car \n Don't Collide \n\n REACH GOAL! ";
  String sssss = "GOAL";
  Text(float size)
  {
    s=size;
  }
  
  void collidetext()
  {
    background(255,0,0);
    
    font = createFont("Georgia", 48);
    textFont(font);
    textAlign(CENTER, CENTER);
    imageMode(CENTER);
    fill(0);
    textSize(s);
    text(sss,width/2,height/2);
  }
  
  void finishtext()
  {
    background(0,100,255);
    font = createFont("Georgia", 48);
    textFont(font);
    textAlign(CENTER, CENTER);
    imageMode(CENTER);
    fill(0);
    textSize(s);
    text(ss,width/2,height/2);
  }
  
  void how()
  {
    background(50,200,50);
    font = createFont("Georgia", 48);
    textFont(font);
    textAlign(CENTER, CENTER);
    imageMode(CENTER);
    fill(0);
    textSize(s-5);
    text(ssss,width/2,height/2);
  }
  
  void goal()
  {
    font = createFont("Georgia", 48);
    textFont(font);
    textAlign(CENTER, CENTER);
    imageMode(CENTER);
    fill(0);
    textSize(s);
    text(sssss,640,650,0);
  }
  
}
