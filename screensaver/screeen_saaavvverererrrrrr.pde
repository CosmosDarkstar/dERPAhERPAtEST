
Linez[] myLinez = new Linez[10];

void setup() {
  background(0);
  size(1000, 500);
  for (int i =0; i<myLinez.length; i++) {
    myLinez[i] = new Linez(random(width), random(height), random(1, 5), random(1, 20));
  }
}


void draw() {
  for (int i=0; i<myLinez.length; i++) {
    Linez iLinez = myLinez[i];
    iLinez.display();
  }
}







/*void setup() {
 size(500, 500);
 background(255);
 xpos = width/2;
 ypos = height/2;
 }*/



/*void draw() {
 strokeW = random(1, 5);
 pointCount= random(1, 20);
 stroke(random(255),random(255),random(255));
 strokeWeight(strokeW);
 if (random(100)>70) {
 strokeWeight(strokeW);
 moveLeft(xpos, ypos, pointCount);
 } else if (random(100)>75) {
 strokeWeight(strokeW);
 moveUp(xpos, ypos, pointCount);
 } else if (random(100)>65) {
 strokeWeight(strokeW);
 moveDown(xpos, ypos, pointCount);
 } else {
 strokeWeight(strokeW);
 moveRight(xpos, ypos, pointCount);
 }
 
 
 if (xpos>width||xpos<0||ypos>height||ypos<0) {
 xpos = random(width);
 ypos = random(height);
 } else {
 if (random(100)>70) {
 strokeWeight(strokeW);
 moveLeft(xpos, ypos, pointCount);
 } else if (random(100)>65) {
 strokeWeight(strokeW);
 moveUp(xpos, ypos, pointCount);
 } else if (random(100)>55) {
 strokeWeight(strokeW);
 moveDown(xpos, ypos, pointCount);
 } else {
 strokeWeight(strokeW);
 moveRight(xpos, ypos, pointCount);
 }
 }
 }
 
 
 */

class Linez { 
  float xpos;
float ypos;
float strokeW;
float lineLength;

Linez(float tempX, float tempY, float tempStroke, float tempLength) {
  xpos = tempX;
  ypos=tempY;
  strokeW=tempStroke;
  lineLength=tempLength;
}

void display() {
  strokeW=random(1,2);
  lineLength=random(1,50);
  stroke(random(255),random(255),random(255));
  
  if (xpos>width||xpos<0||ypos>height||ypos<0) {
    xpos = random(width);
    ypos = random(height);
  } else {
    if (random(100)>70) {
      strokeWeight(strokeW);
      moveLeft(xpos, ypos, lineLength);
    } else if (random(100)>65) {
      strokeWeight(strokeW);
      moveUp(xpos, ypos, lineLength);
    } else if (random(100)>55) {
      strokeWeight(strokeW);
      moveDown(xpos, ypos, lineLength);
    } else {
      strokeWeight(strokeW);
      moveRight(xpos, ypos, lineLength);
    }
  }
}




void moveRight(float startX, float startY, float moveCount) {
  for (float i = 0; i<moveCount; i++) {
    point(startX+i, startY);
    xpos = startX+i;
  }
}



void moveUp(float startX, float startY, float moveCount) {
  for (float i = 0; i<moveCount; i++) {
    point(startX, startY-i);
    ypos = startY-i;
  }
}



void moveDown(float startX, float startY, float moveCount) {
  for (float i = 0; i<moveCount; i++) {
    point(startX, startY+i);
    ypos = startY+i;
  }
}



void moveLeft(float startX, float startY, float moveCount) {
  for (float i = 0; i<moveCount; i++) {
    point(startX-i, startY);
    xpos = startX-i;
  }
}


































}

