class SickBoy
{

  float _x;
  float _y;
  float _width;
  float _height;
  
  ParticleSystem _ps;

  SickBoy()
  {
    _x = random(20,700);
    _y = random(350,700);
    _width = 200;
    _height = 200;
    sickperson = loadImage("sickboy.png");
    sickperson.resize(200, 200);
    _ps = new ParticleSystem(new PVector(_x, _y));
  }
  void Update()
  {


  _ps.addParticle();
  
  _ps.DrawParticle();
  
  }

  
  void Draw()
  {
   image(sickperson, _x, _y);
   
   
  }
}
