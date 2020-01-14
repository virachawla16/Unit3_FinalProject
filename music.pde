class Music
{

  AudioPlayer[] Country = new AudioPlayer[4];
  AudioPlayer[] Blues = new AudioPlayer[4];
  AudioPlayer[] Jazz = new AudioPlayer[4];
  AudioPlayer[] Metal = new AudioPlayer[4];

  Music()
  {
    Blues[0]= minim.loadFile("Blues Em.mp3");
    Blues[1]= minim.loadFile("Blues G.mp3");
    Blues[2]= minim.loadFile("Blues D.mp3");
    Blues[3]= minim.loadFile("Blues C.mp3");

    Country[0]= minim.loadFile("Country Em.mp3");
    Country[1]= minim.loadFile("Country G.mp3");
    Country[2]= minim.loadFile("Country D.mp3");
    Country[3]= minim.loadFile("Country C.mp3");


    Jazz[0]= minim.loadFile("     ");
    Jazz[1]= minim.loadFile("     ");
    Jazz[2]= minim.loadFile("     ");
    Jazz[3]= minim.loadFile("     ");

    Metal[0]= minim.loadFile("Metal Em.mp3");
    Metal[1]= minim.loadFile("Metal G.mp3");
    Metal[2]= minim.loadFile("Metal D.mp3");
    Metal[3]= minim.loadFile("Metal C.mp3");
  }

  void PlayNote(int i)
  {
    if (Musictype==1)
    {
      Blues[i].play();
    }
    if (Musictype==2)
    {
      Jazz[i].play();
    }
    if (Musictype==3)
    {
      Metal[i].play();
    }
    if (Musictype==4)
    {
      Country[i].play();
    }
  }
}
