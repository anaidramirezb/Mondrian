
// Variables
float posX=0;
float posY=0;
int D=30;
int ancho=20;
int alto =50;
float mov_x = 2;
float mov_y = -2;
float p1,p2;
int puntaje1, puntaje2=0;
boolean p1up, p1down, p2up, p2down;

void setup ( ) {
size (400 ,400) ;
}

void draw( ) {
background(0);
ellipse (posX , posY ,D,D) ;
p1 = height/2;
p2 = height/2;
  
if (p1up) {
    p1 -= 5;
  }
  if (p1down) {
    p1 += 5;
  }
  if (p2up) {
    p2 -= 5;
  }
  if (p2down) {
    p2 += 5;
  }

//Jugador 1
int p1=width-50;
int jugy=mouseY-30;
rect ( p1 ,jugy, ancho, alto);
posX= posX+mov_x;

rect(30,p1, 20 , 80);
rect(width-30 , p2, 20,80 );


//Verificar si hay colisión y puntajes
if (posX>=400 || posX<=0 || (mov_x>0 && jugy<=posY+D/2 
    && posY+D/2<=jugy+alto 
    && p1<=posX+D/2  
    && posX-D/2<=p1+ancho) ){
    mov_x=-mov_x; //mantiene la misma dirección en x
    if (posX>=400){
    puntaje1= puntaje1 +1;
}
}
if (posX>=400 || posX<=0 || (mov_x>0 && jugy<=posY-D/2 
    && posY-D/2<=jugy-alto 
    && p1<=posX-D/2  
    && posX+D/2<=p1+ancho) ){
    if (posX<=0){
    puntaje2= puntaje2+1;
}
}
// Muestra los puntajes
textFont(createFont("Arial",20));
text (puntaje1 , width/2+width/4, 20) ;
text(puntaje2, 50, 20);
}



void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      p2up = true;
    }
    if (keyCode == DOWN) {
      p2down = true;
    }
  } else {
    if (key == 'w') {
      p1up = true;
    }
    if (key == 's') {
      p1down = true;
    }
  }
}

void keyReleased() {
  if (key == CODED) {
    if (keyCode == UP) {
      p2up = false;
    }
    if (keyCode == DOWN) {
      p2down = false;
    }
  } else {
    if (key == 'w') {
      p1up = false;
    }
    if (key == 's') {
      p1down = false;
    }
  }
}


/**

float ballX, ballY, dBX, dBY;
float ballD, paddleW, paddleH, paddleG;


void setup() {
  frameRate(60);
  rectMode(CENTER);


  p1 = height/2;
  p2 = height/2;
  ballX = width/2;
  ballY = height/2;
  dBX = random(2, 6);
  dBY = random(2, 6);
  ballD = 25;
  paddleW = 20;
  paddleH = 80;
  paddleG = 30;
}

void draw() {
 
  //Keeps ball on the screen (and adds to scores)
  if (ballX - ballD/2 < 0) {
    ballX = width/2;
    ballY = height/2;
    dBX = random(2, 6);
    dBY = random(2, 6);
  }
  if (ballX + ballD/2 > width) {
    ballX = width/2;
    ballY = height/2;
    dBX = random(2, 6);
    dBY = random(2, 6);
  }

  if (ballY - ballD/2 < 0 || ballY + ballD/2 > height) {
    dBY = -dBY;
  }

  //Draws paddles and ball
  rect(paddleG, p1, paddleW, paddleH);
  rect(width-paddleG, p2, paddleW, paddleH);
  ellipse(ballX, ballY, ballD, ballD);


  //Updates ball's position
  ballX += dBX;
  ballY += dBY;


**/
