int FR = 50;    // フレームレート
int roop_last = 1000;  // ループ合計回数
int roop = 0;    // ループ回数
int img_count = 0;  // イメージの個数
float release_freq = 1; // 増殖の頻度(s/FR)
PImage img;
Obj[] obj_array = new Obj[roop_last];
float[] ang_array = new float[roop_last];
float[] speed_array = new float[roop_last];

void setup(){

  size(500, 500);
  background(0);
  frameRate(FR);
  img = loadImage("ingu.png");
  
  for(int i=0; i<roop_last; i++){
    ang_array[i] = random(0, 2 * PI);
    speed_array[i] = random(5, 15);
  }
}

void draw(){

  background(255);
  
  // 増殖
  if(roop % release_freq == 0){
    obj_array[img_count] = new Obj(img, 220., 220., random(10, 130));
    img_count++;
  }
  
  // 表示
  for(int i=0; i<img_count; i++){
    obj_array[i].disp();
    obj_array[i].linear(ang_array[i], speed_array[i]);
  }
  
  saveFrame("frames//####.png");
  roop++;
  
  if(roop == roop_last) exit();
  
}
