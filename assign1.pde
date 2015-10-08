PImage enemyImg, fighterImg, hpImg, treasureImg;
PImage bg1,bg2;

int a,b; //enemy
int x; //hpBlood
int m,n; //treasure
float s,t; //bg1,bg2

void setup () {
  size(640,480) ;  
  
  //enemy
  a=0;
  b=floor(random(50,400)); 
  
  //hpBlood
  fill(255,0,0,150);
  x=floor(random(0,200));
  
  //treasure
  m=floor(random(32,600));
  n=floor(random(19.5,450));
  
  //bg1
  s=-640;
  
  //bg2
  t=0;
  
  //img
  enemyImg=loadImage("img/enemy.png");
  fighterImg=loadImage("img/fighter.png");
  hpImg=loadImage("img/hp.png");
  treasureImg=loadImage("img/treasure.png");
  
  bg1=loadImage("img/bg1.png");
  bg2=loadImage("img/bg2.png");
  }

void draw() {
  
   //backgorund1
   if (s==0){
    s=-640;
  }
  
  image(bg1,s,0);
  s=s+0.5;
  s=s%640;
  
   //background2
   if (t==640){
     t=-640;
   }
   
  image(bg2,t,0);
  t=t+0.5;  
  t=t % 640;
  
  //enemy
  image(enemyImg,a,b);
  a=a+5;
  a=a % 640;
  
  //fighter
  image(fighterImg,580,240);
  
  //hp
  image(hpImg,20,15);   
  
  //hpBlood
  rect(32,19.5,x,15);
  
  //treasure
  image(treasureImg,m,n);
  
  
}
