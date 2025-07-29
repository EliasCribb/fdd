int y=50;int vely=10;int x=50;int velx=10; int reset=550;
void setup(){
size(800,600);
}

int counter = 0;
void draw(){
 
background(0,0,0); 
//
circle(x,y,50);
rect(mouseX,500,100,10);
//

if(y<50){
vely = vely *(-1);
}
if(x > mouseX && x < mouseX+100 && y > 475){
vely = vely *(-1); 
//sumar pts
counter = counter +1;
}
if(x>750 || x<50)
{
velx = velx *(-1);
}
text(str(counter), 400, 100);
textSize(120);
y=y+vely;
x=x+velx;
if(y>reset){
reiniciar();
}
}
void reiniciar(){
y = height/2;
x = width/2;
counter = 0;
}
