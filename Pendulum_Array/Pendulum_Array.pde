int i;
Ball[] balls;


void setup()
{

  size(500, 500);
  balls = new Ball[20];
  for ( i=0; i<balls.length; i = i+1)
  {

    if (i%2==0) {       
      balls[i] = new Ball();
      balls[i].position.x = 7+i*10;
      balls[i].position.y = 20+i*20;
      balls[i].velocity.x = 3;
      balls[i].velocity.y = 0;
    } else
    {
      balls[i] = new Ball();
      balls[i].position.x = width - (7+i*10);
      balls[i].position.y = 20+i*20;
      balls[i].velocity.x = -3;
      balls[i].velocity.y = 0;
      

    }
  }
}


void draw()
{
  background(254, 244, 232);
  for (Ball ball : balls) // a for-each loop
  {
    ball.draw();
    ball.move();
  }
}
