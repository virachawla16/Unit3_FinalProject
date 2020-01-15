import ddf.minim.*;

//My country audio works. The other ones don't because there is a problem with the audio.

Minim minim;

Music music;
Circle circle[]= new Circle[5];

Circle one= new Circle();

PFont gothicbold;

PFont hel;

int Scene = 0;

int Circlecount = 36;

int Musictype = 1;
 //<>//

void setup()
{
  size(800, 800);
  minim = new Minim(this);
  hel = createFont("HelveticaNeue-UltraLight", 35);
  for (int i=0; i < 5; i++)
  {
    circle[i] = new Circle();
  }

  music= new Music();

  gothicbold = createFont("ToppanBunkyuMidashiGothicStdN-ExtraBold", 100);
}

void draw()
{
  if (Scene == 0)
  {
    background(255, 255, 255);

    fill(197, 250, 249);
    rect(70, 350, 300, 160);


    fill(0, 0, 0);
    textSize(35);
    textFont(hel);
    text("Electric", 170, 450);

    fill(234, 196, 255);
    rect(450, 350, 300, 160);

    fill(0, 0, 0);
    textSize(35);
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
    textSize(35);
    textFont(hel);
    text("Jazz", 180, 450);



    fill(234, 196, 255);
    rect(450, 350, 300, 160);

    fill(0, 0, 255);
    textSize(35);
    textFont(hel);
    text("Country", 550, 450);
  }

  if (Scene == 3)
  {
    fill(197, 250, 249);
    rect(70, 350, 300, 160);

    fill(0, 0, 255);
    textSize(35);
    textFont(hel);
    text("Metal", 180, 450);



    fill(197, 250, 249);
    rect(450, 350, 300, 160);

    fill(0, 0, 255);
    textSize(35);
    text("Blues", 560, 450);
  }

  if (Scene == 5)
  {

    background(255, 111, 98);
    textFont(gothicbold);
    text("GAME OVER", 100, 430);
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
              Musictype = 1; //blues
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
            Musictype= 3; //metal
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

            Musictype = 2; //jazz
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
            Musictype = 4; //country
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

void keyPressed()
{

  if (key=='E'||key=='e')
  {
    music.PlayNote(0);
  }

  if (key=='G'||key=='g')
  {
    music.PlayNote(1);
  }

  if (key=='D'||key=='d')
  {
    music.PlayNote(2);
  }

  if (key=='C'||key=='c')
  {
    music.PlayNote(3);
  }
}
