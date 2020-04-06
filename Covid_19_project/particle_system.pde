class ParticleSystem {
  ArrayList<Particle> pList = new ArrayList<Particle>();

  PVector origin;

  ParticleSystem(PVector location) {
    origin = location.copy();
    pList = new ArrayList();

    for (int i = 0; i< 5; i++)
    {
      pList.add(new Particle(origin));
    }
  }

  void DrawParticle() {

    for (int i= pList.size()-1; i >= 0; i--)
    {
      Particle p = pList.get(i);
      p.reload();
      p.render();
    }
    addParticle();
  }



  void addParticle() 
  {

    pList.add(new Particle(origin));
  }
}
