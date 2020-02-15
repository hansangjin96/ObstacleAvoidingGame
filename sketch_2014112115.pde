float state=-1, theta=0.1;
int total= 0;
Car car = new Car(0, 0, 20, 3);
Road road = new Road();
Obstacle1[] obstacle1 = new Obstacle1[1000];
Obstacle2 obstacle2 = new Obstacle2(20);
Timer timer = new Timer(1000);
Text text = new Text(40);

void setup()
{
  size(700, 700, P3D);
  smooth();

  timer.start();
}

void draw()
{
  background(191, 205, 255, 100);

  road.r1(); road.r2(); road.r3(); road.r4(); road.r5(); 
  text.goal();
  
  obstacle2.display();

  pushMatrix();
  translate(50, 632, 0);
  car.display3();
  popMatrix();

  if (timer.isFinished())
  {
    obstacle1[total] = new Obstacle1();
    total++;

    if (total>=obstacle1.length)
    {
      total=0;
    }
    timer.start();
  }
  
  if(car.collision1(road))
  {
    car.pop();
    text.collidetext();
  }

  if (car.collision3(obstacle2))
  {
    car.pop();
    text.collidetext();
  }

  for (int i=0; i<total; i++)
  {   
    if (car.collision2(obstacle1[i]))
    {
      car.pop();
      text.collidetext();
    }
    if (!car.collision1(road) && !car.collision2(obstacle1[i]))
    {
      obstacle1[i].move();
      obstacle1[i].display();
      if (car.collision2(obstacle1[i]))
      {
        car.pop();
        text.collidetext();
      }
    }
  }

  if (car.finish())
  {
    state=0;
    text.finishtext();
  }

  if (state==1)
  {
    car.moveup();
  } else if (state==2)
  {
    car.moveleft();
  } else if (state==3)
  {
    car.movedown();
  } else if (state==4)
  {
    car.moveright();
  } else if (state==-1)
  {
    text.how();
  }
}

void keyPressed()
{
  if (key == 'w')
  {
    state = 1;
  } else if (key == 'a')
  {
    state = 2;
  } else if (key == 'x')
  {
    state = 3;
  } else if (key == 'd')
  {
    state = 4;
  } else if (key == 's')
  {
    state = 0;
  } else if (key == 'e')
  {
    car.scup();
  } else if (key == 'q')
  {
    car.scdn();
  }
}

void mousePressed()
{
  state+=1;
}
