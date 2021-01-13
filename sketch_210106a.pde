Objnikoniko nikoniko;
Objnikoniko nikoniko2;
point nikoniko_point;
point nikoniko2_point;
int roop = 1;
  
void setup(){
  int FR = 50;    // フレームレート
  size(500, 500);
  background(255);
  frameRate(FR);
  // nikonikoの初期座標
  float[] nikoniko_initpos = {200, 200};
  float nikoniko_size = 50;
  nikoniko = new Objnikoniko(nikoniko_initpos[0], nikoniko_initpos[1], nikoniko_size);
  float[] nikoniko_rotate_center = {100, 100};
  nikoniko_point = new point(nikoniko_rotate_center[0], nikoniko_rotate_center[1]);
  
  // nikoniko2の初期座標
  float[] nikoniko2_initpos = {70, 70};
  float nikoniko2_size = 30;
  nikoniko2 = new Objnikoniko(nikoniko2_initpos[0], nikoniko2_initpos[1], nikoniko2_size);
  float[] nikoniko2_rotate_center = {100, 100};
  nikoniko2_point = new point(nikoniko2_rotate_center[0], nikoniko2_rotate_center[1]);
}

void draw(){
  background(255);
  nikoniko.rotation(nikoniko_point.loc(0), nikoniko_point.loc(1), 0.05);
  nikoniko_point.linear(PI/10, 0.5);
  nikoniko.disp();
    
  nikoniko2.rotation(nikoniko2_point.loc(0), nikoniko2_point.loc(1), 0.5);
  nikoniko2_point.rotation(200, 200, 0.05);
  nikoniko2.disp();
  
  //saveFrame("frames//####.png");
  roop++;
  //if(2*PI/0.05 < roop) exit();
  
}



void keyPressed(){
  if(keyCode == ENTER){
  save("210107.png");
  }
}
