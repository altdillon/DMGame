class Ship {
  int xPos;
  int yPos;
  int partWidth;

  Ship(int x, int y)
  {
    xPos = x;
    yPos = y;
    partWidth = 10;
  }

  void display()
  {
    noStroke();
    fill(255);
    rect(xPos, yPos, xPos + partWidth, yPos - 3 * partWidth);
    rect(xPos + partWidth, yPos - partWidth, xPos + 2 * partWidth, yPos - 4 * partWidth);
    rect(xPos + 2 * partWidth, yPos - 3 * partWidth, xPos + 4 * partWidth, yPos - 5 * partWidth);
    rect(xPos + 4 * partWidth, yPos - partWidth, xPos + 5 * partWidth, yPos - 4 * partWidth);
    rect(xPos + 5 * partWidth, yPos, xPos + 6 * partWidth, yPos - 3 * partWidth);
  }

  void move()
  {
    boolean move = floor(random(0, 15)) == 0;
    if(move)
    {
      int direction = floor(random(0, 4));
      switch(direction)
      {
        case 0:
          xPos += partWidth;
          break;
        case 1:
          yPos -= partWidth;
          break;
        case 2:
          xPos -= partWidth;
          break;  
        case 3:
          yPos += partWidth;
      }
    }
  }

  Bullet shootGun()
  {
    float direction = random(0, 359);
    int r = floor(random(0,256));
    int g = floor(random(0,256));
    int b = floor(random(0,256));
    return new Bullet(xPos + 3 * partWidth, 
                      yPos - 5 * partWidth, 
                      direction,
                      r, g, b);
  }
}
