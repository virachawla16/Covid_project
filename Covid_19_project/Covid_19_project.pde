PImage sickperson;
PImage girl;
PVector Position;
PVector Velocity;
PImage School;

float DistBoy1;
float DistBoy2;
float DistBoy3;
float DistBoy4;



float GirlX = mouseX;
float GirlY = mouseY;


SickBoy boy1;
SickBoy boy2;
SickBoy boy3;
SickBoy boy4;

PFont Serif;


void setup() {
  size(800, 800);

  girl = loadImage("girl.png");
  girl.resize(360, 360);


  sickperson = loadImage("sickboy.png");
  sickperson.resize(300, 300);

  boy1 = new SickBoy();
  boy2 = new SickBoy();
  boy3 = new SickBoy();
  boy4 = new SickBoy();

  Serif = loadFont("kk.vlw");
  
  School = loadImage("classroom.jpg");
   School.resize(800, 800);
}

void draw()
{
  background(0);
  
  image(School,400,400);
  

  fill(255);
  textFont(Serif);
  text("Move your cursor around to see the effects", 30, 50);
  text("Of what happens when social distancing is not maintained", 30, 80);
  text("When the girl gets too close to the infected people", 30, 110);
  text("she becomes grey, meaning she is infected", 30, 140);


  image(girl, mouseX, mouseY);
  imageMode(CENTER);

  DistBoy1 = dist(mouseX, mouseY, boy1._x, boy1._y);


  if (DistBoy1 < 150)
  {
    image(girl, mouseX, mouseY);

    //image(sickperson);

    filter(GRAY);
  }

  DistBoy2 = dist(mouseX, mouseY, boy2._x, boy2._y); 

  if (DistBoy2 <150)
  {
    image(girl, mouseX, mouseY);

    //image(sickperson);

    filter(GRAY);
  }

  DistBoy3 = dist(mouseX, mouseY, boy3._x, boy3._y);


  if (DistBoy3 < 150)
  {
    image(girl, mouseX, mouseY);

    //image(sickperson);

    filter(GRAY);
  }

  DistBoy4 = dist(mouseX, mouseY, boy4._x, boy4._y);

  if (DistBoy4 < 150)
  {
    image(girl, mouseX, mouseY);

    //image(sickperson);

    filter(GRAY);
  }


  boy1.Draw();
  boy1.Update();

  boy2.Draw();
  boy2.Update();

  boy3.Draw();
  boy3.Update();

  boy4.Draw();
  boy4.Update();
}
