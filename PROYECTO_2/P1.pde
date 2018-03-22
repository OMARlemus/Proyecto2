class Particle1 {

  // We need to keep track of a Body and a radius
  Body body;
  float r;

  Particle1(float x, float y, float r_) {
    r = r_;
   
    makeBody(x,y,r);
  }


  void killBody() {
    box2d.destroyBody(body);
  }


  boolean done() {
 
    Vec2 pos = box2d.getBodyPixelCoord(body);
    // Is it off the bottom of the screen?
    if (pos.y>height/2 ) {
      killBody();
      return true;
    }
    return false;
  }

  // 
  void display1() {
  
    Vec2 pos = box2d.getBodyPixelCoord(body);

    float a = body.getAngle();
    pushMatrix();
    translate(pos.x,pos.y);
    rotate(-a);
    fill(0);
    stroke(255);
    strokeWeight(1);
    ellipse(0,0,r*2,r*2);


    popMatrix();
  }

 
  void makeBody(float x, float y, float r) {

    BodyDef bd = new BodyDef();

    bd.position = box2d.coordPixelsToWorld(x,y);
    bd.type = BodyType.DYNAMIC;
    body = box2d.world.createBody(bd);


    CircleShape cs = new CircleShape();
    cs.m_radius = box2d.scalarPixelsToWorld(r);
    
    FixtureDef fd = new FixtureDef();
    fd.shape = cs;

    fd.density =1;
    fd.friction = 0.01;
    fd.restitution = 0.3;
    
    
    body.createFixture(fd);

   
    body.setLinearVelocity(new Vec2(random(-10f,10f),random(5f,10f)));
    body.setAngularVelocity(random(-10,10));
  }






}