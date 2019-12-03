import ddf.minim.*;

Minim minim;

Circle circle[]= new Circle[7];

Circle one= new Circle();
PFont hel;

int Scene = 0;

void setup()
{
  size(800, 800);
  minim = new Minim(this);
  hel = createFont("HelveticaNeue-UltraLight", 32);
  for (int i=0; i < 5; i++)
  {
    circle[i] = new Circle();
  }
}

void draw()
{

  if (Scene == 0)
  {
    background(255, 255, 255);
    // one.draw();

    fill(197, 250, 249);
    rect(70, 350, 300, 160);


    fill(0, 0, 0);
    textSize(32);
    textFont(hel);
    text("Electric", 170, 450);

    fill(234, 196, 255);
    rect(450, 350, 300, 160);

    fill(0, 0, 0);
    textSize(32);
    text("Acoustic", 540, 450);
  }


  if (Scene == 4)
  {
    background(255, 196, 196);
    fill(0, 0, 0);
    for (int i=0; i < 5; i++)
    {
      circle[i].draw();
    }
  }


  if (Scene == 2)
  {
    fill(234, 196, 255);
    rect(70, 350, 300, 160);


    fill(0, 0, 255);
    textSize(32);
    textFont(hel);
    text("Jazz", 180, 450);


    fill(234, 196, 255);
    rect(450, 350, 300, 160);

    fill(0, 0, 255);
    textSize(32);
    textFont(hel);
    text("Country", 550, 450);
  }

  if (Scene == 3)
  {
    fill(197, 250, 249);
    rect(70, 350, 300, 160);


    fill(0, 0, 255);
    textSize(32);
    textFont(hel);
    text("Metal", 180, 450);

    fill(197, 250, 249);
    rect(450, 350, 300, 160);

    fill(0, 0, 255);
    textSize(32);
    text("Blues", 560, 450);
  }
}


void mouseReleased()
{
    if (Scene == 3)
  {
    if (mouseX > 450)
    {
      if (mouseX < 450 + 300)
      {
        if (mouseY > 350)
        {
          if (mouseY < 350 + 160)
          {
            {
              Scene = 4;
            }
          }
        }
      }
    }
  }
  if (Scene == 3)
  {
    if (mouseX > 70)
    {
      if (mouseX < 70 + 300)
      {
        if (mouseY > 350)
        {
          if (mouseY < 350 + 160)
          {
            Scene = 4;
          }
        }
      }
    }
  }
  if (Scene == 2)
  {
    if (mouseX > 70)
    {
      if (mouseX < 70 + 300)
      {
        if (mouseY > 350)
        {
          if (mouseY < 350 + 160)
          {
            Scene = 4;
          }
        }
      }
    }
  }

  if (Scene == 2)
  {
    if (mouseX > 450)
    {
      if (mouseX < 450 + 300)
      {
        if (mouseY > 350)
        {
          if (mouseY < 350 + 160)
          {
            Scene = 4;
          }
        }
      }
    }
  }
  if (Scene == 0)
  {
    if (mouseX > 450)
    {
      if (mouseX < 450 + 300)
      {
        if (mouseY > 350)
        {
          if (mouseY < 350 + 160)
          {
            Scene = 2;
          }
        }
      }
    }
  }

  if (Scene == 0)
  {
    if (mouseX > 70)
    {
      if (mouseX < 70 + 300)
      {
        if (mouseY > 350)
        {
          if (mouseY < 350 + 160)
          {
            Scene = 3;
          }
        }
      }
    }
  }



  



}
