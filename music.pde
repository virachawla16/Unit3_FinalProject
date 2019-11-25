class Music
{
  
Minim minim;
AudioPlayer[] Electric = new AudioPlayer[4];

AudioPlayer[] Acoustic = new AudioPlayer[4];

AudioPlayer[] Jazz = new AudioPlayer[4];

AudioPlayer[] Metallic = new AudioPlayer[4];

Music()
{
  Electric[0]= minim.loadFile("Eminor.mp3");
  Electric[1]= minim.loadFile("Gmajor.mp3");
  Electric[2]= minim.loadFile("Dmajor.mp3");
  Electric[3]= minim.loadFile("Cmajor.mp3");
  
  Acoustic[0]= minim.loadFile("     ");
  Acoustic[1]= minim.loadFile("     ");
  Acoustic[2]= minim.loadFile("     ");
  Acoustic[3]= minim.loadFile("     ");
  
  
  Jazz[0]= minim.loadFile("     ");
  Jazz[1]= minim.loadFile("     ");
  Jazz[2]= minim.loadFile("     ");
  Jazz[3]= minim.loadFile("     ");
  
  Metallic[0]= minim.loadFile("     ");
  Metallic[1]= minim.loadFile("     ");
  Metallic[2]= minim.loadFile("     ");
  Metallic[3]= minim.loadFile("     ");
  
  
  
  
  
  
}


}
