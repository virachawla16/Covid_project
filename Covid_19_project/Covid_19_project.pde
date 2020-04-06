PImage sickperson;
PImage girl;
PVector Position;
PVector Velocity;

float [] sickpersonX = new float[3];
float [] sickpersonY = new float[3];



float A = (float) random (30, 700);
float B = (float) random (30, 700);

float DistX;
float DistY;

float GirlX = mouseX;
float GirlY = mouseY;


ParticleSystem ps = new ParticleSystem(new PVector(A, B));

void setup() {
  size(800, 800);

  girl = loadImage("girl.png");
  girl.resize(360, 360);


  sickperson = loadImage("sickboy.png");
  sickperson.resize(200, 200);

  ps.addParticle();

  for (int i=1; i<3; i++)

  {
    sickpersonX [i] = A;
    sickpersonY [i] = B;
  }
}

void draw()
{
  background(255, 255, 255);






  image(girl, mouseX, mouseY);
  imageMode(CENTER);

  image(sickperson, 230, 230);

  ps.DrawParticle();
  
  DistX = mouseX - A;
  
  //DistY = mouseY - B;
  
  if (DistX < 40)
  {
    
   background(234,43,43);
   
  }
  
  //if (DistY < 20)
  //{
    
  // background(234,43,43);
   
  //}

  for (int i=1; i<3; i++)
  {
    image(sickperson, A, B, 200, 200);
  }
}
