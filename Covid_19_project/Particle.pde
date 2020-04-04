class Particle {

  PVector location;
  PVector velocity;
  PVector acceleration;
  float lifespan;
  float alpha;

  Particle() {
    location = new PVector(400,401);
    acceleration = new PVector(0, 0.05);
    velocity = new PVector(random(-1, 1), random(-2, 0));
    lifespan = random(200-255);
    alpha = 255;
  }

  Particle(PVector _location) {
    location = _location.copy();
    acceleration = new PVector(0, 0.05);
    velocity = new PVector(random(-1, 1), random(-2, 0));

    lifespan = random(200-255);
    alpha = 255;
  }


  boolean finished() {
    return alpha < 0;
  }


  void reload() {
    velocity.add(acceleration);
    location.add(velocity);
    lifespan -= -2.0;
    alpha -= 0;
  }

  void render() {
    stroke(0, lifespan);
    fill(252, 173, 179, alpha);
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
