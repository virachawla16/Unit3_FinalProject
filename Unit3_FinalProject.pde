import ddf.minim.*;

Minim minim;

Circle circle[]= new Circle[5];

Circle one= new Circle();
PFont hel;

int Scene =0;

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

    fill(255, 255, 255);
    rect(70, 350, 300, 160);


    fill(0, 0, 0);
    textSize(32);
    textFont(hel);
    text("Electric", 170, 450);

    // if mousePressed()
    //{
    //(mouseX > 90 && mouseX < 97)

    fill(255, 255, 255);
    rect(450, 350, 300, 160);

    fill(0, 0, 0);
    textSize(32);
    text("Acoustic", 540, 450);
  }

  if (Scene == 4)
  {
    for (int i=0; i < 5; i++)
    {
      circle[i].draw();
    }
  }

  if (Scene == 2)
  {
    fill(255, 255, 255);
    rect(70, 350, 300, 160);


    fill(0, 0, 0);
    textSize(32);
    textFont(hel);
    text("Jazz", 170, 450);

    fill(255, 255, 255);
    rect(450, 350, 300, 160);

    fill(0, 0, 0);
    textSize(32);
    text("Acoustic", 540, 450);
  }

  if (Scene == 3)
  {
    fill(255, 255, 255);
    rect(70, 350, 300, 160);


    fill(0, 0, 0);
    textSize(32);
    textFont(hel);
    text("Metallic", 170, 450);

    fill(255, 255, 255);
    rect(450, 350, 300, 160);

    fill(0, 0, 0);
    textSize(32);
    text("Electric", 540, 450);
  }
}
