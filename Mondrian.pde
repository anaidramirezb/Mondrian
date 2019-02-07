
int a=80;
int b= a+70+110;
int c=b+120;

background(250);
size(450,350);

strokeWeight(6);
stroke(0);

//lineas verticales
line(a,0,a,height);
line(a+70,0,a+70,height);
line(b,0,b,height);
line(c,0,c,height);

//lineas horizontales
line(0,a,width,a);
line(0, a+80,width,a+80);
line(0,b,width,b);
line(0,c,width,c);

fill(#FFFF00);
rect(a,b-30,70,30);

//colores
strokeWeight(0);
fill (255,0,0) ;
rect(a+3.5 ,80+3.5 ,70-4 ,80-4) ;

fill(0,0,255);
rect(b+3.5,a+3.5 ,120-4 ,80-4) ;
