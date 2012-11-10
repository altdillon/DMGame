ArrayList <Bullet> bullets;
Ship ship;

void setup() {
  size(500,500);
  background(0);
  fill(255);
  rectMode(CORNERS);
  bullets = new ArrayList <Bullet>();
  ship = new Ship(width/2, height/2);
}

void draw() {
  background(0);
  ship.display();
  ship.move();
  if(floor(random(0, 10)) == 0)
  {
    bullets.add(ship.shootGun());
  }
  moveBullets();
}

void moveBullets() {
  for(Bullet b : bullets)
    b.moveBullet();
}
