class Circle
{

  float _x;
  float _y;
  int _colour;
  float _velocity;

  Circle()
  {
    _velocity = 3;
    _colour = (int)random(1, 5);

    if (_colour == 1)
    {
      _x = 800-45;
      _y = random(-700, 0);
    }

    if (_colour == 2)
    {
      _x = 400;
      _y = random(-700, 0);
    }

    if (_colour == 3)
    {
      _x = 70;
      _y = random(-700, 0);
    }

    if (_colour == 4)
    {
      _x = 200;
      _y = random(-700, 0);
    }
  }

  void draw()
  {

    if (_colour == 1)
    {
      fill(229, 86, 86);
    }
    if (_colour == 2)
    {
      fill(250, 163, 109);
    }
    if (_colour == 3)
    {
      fill(118, 169, 255);
    }
    if (_colour == 4)
    { 
      fill(75, 219, 174);
    }


    ellipse(_x, _y, 90, 90);

    if (_colour == 1)
    {
      fill(0, 0, 0);
      text("G", _x-10, _y+7);
    }
    if (_colour == 2)
    {
      fill(0, 0, 0);
      text("D", _x-8, _y+8);
    }
    if (_colour == 3)
    {
      fill(0, 0, 0);
      text("C", _x-10, _y+7);
    }
    if (_colour == 4)
    { 
      fill(0, 0, 0);
      text("Em", _x-15, _y+8);
    }

    _y += _velocity;

    if (_y > 700)
    {
      Circlecount--;

      if (Circlecount < 0)
      {
        Scene = 5;
      }




      _y = 0;
      _colour = (int)random(1, 5);

      if (_colour == 1)
      {
        _x = 800-45;
      }

      if (_colour == 2)
      {
        _x = 400;
      }

      if (_colour == 3)
      {
        _x = 70;
      }

      if (_colour == 4)
      {
        _x = 200;
      }
    }
  }
}
