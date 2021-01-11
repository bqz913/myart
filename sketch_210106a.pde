Objnikoniko nikoniko = new Objnikoniko(200, 200, 50);
int roop = 1;

void setup(){
  int FR = 50;    // フレームレート
  size(500, 500);
  background(255);
  frameRate(FR);
}

void draw(){
  background(255);
  nikoniko.rotation(300, 300, 0.05);
  nikoniko.disp();
  saveFrame("frames//####.png");
  roop++;
  if(2*PI/0.05 < roop) exit();
}


void keyPressed(){
  if(keyCode == ENTER){
  save("210107.png");
  }
}
