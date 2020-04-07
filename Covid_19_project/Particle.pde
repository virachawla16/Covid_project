class Particle {

  PVector location;
  PVector velocity;
  PVector acceleration;
  float lifespan;
  float alpha;
  


  Particle() {
    location = new PVector(100, 100);
    acceleration = new PVector(0, 0.05);
    velocity = new PVector(random(-1, 1), random(-2, 0));
    lifespan = 100;
    alpha = 255;
  }

  Particle(PVector _location) {
    location = _location.copy();
    acceleration = new PVector(0, 0.05);
    velocity = new PVector(random(-2, 0), random(-2, 0));

    lifespan = 100;
    alpha = 100;
  }


  boolean finished() {
    return alpha < 0;
  }


  void reload() {
    velocity.add(acceleration);
    location.add(velocity);
    lifespan -= 2;
    alpha -= 1;
  }

  void render() {
    stroke(0, lifespan);
    fill(85, 191, 62, alpha);
    ellipse(location.x, location.y, 8, 8);
  }

  boolean isDead() {
    if (lifespan < 0.0) {
      return true;
    } else {
      return false;
    }
  }
}
