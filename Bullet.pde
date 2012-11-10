class Bullet {
  float posX;
  float posY;
  float speed;
  float angle;
  float len;
  color bulletColor;
  
  Bullet(float posX, float posY, float angle, int r, int g, int b) {
    this.posX = posX;
    this.posY = posY;
    this.angle = radians(angle);
    bulletColor = color(r, g, b);
    len = 5;
    speed = 5;
  }
  
  void moveBullet() {
    displayBullet();
    posX += cos(angle) * speed;
    posY -= sin(angle) * speed;
  }
  
  void displayBullet() {
    stroke(bulletColor);
    line(posX, posY, posX + cos(angle) * len, posY - sin(angle) * len);
  }
}
