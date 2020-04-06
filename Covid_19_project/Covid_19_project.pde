PImage sickperson;
PImage girl;
PVector Position;
PVector Velocity;
float [] sickpersonX = new float[6];
float [] sickpersonY = new float[6];

ParticleSystem ps = new ParticleSystem(new PVector(400, 401));

void setup()
{
  size(800, 800);

  girl = loadImage("girl.png");
  girl.resize(400, 400);


  sickperson = loadImage("sickboy.png");
  sickperson.resize(230, 230);

  ps.addParticle();

  for (int i=0; i<6; i++)

  {
    sickpersonX[i] = (float) random (0, 800);
    sickpersonY[i] = (float) random (0, 800);
  }
}

void draw()
{
  background(255, 255, 255);

  image(girl, mouseX, mouseY);
  imageMode(CENTER);

  image(sickperson, 230, 230);

  ps.DrawParticle();

  for (int i=0; i<6; i++)
  {
    image(sickperson, sickpersonX[i], sickpersonY[i], 230, 230);
  }
}
