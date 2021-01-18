int FR = 50;    // フレームレート
int roop_last = 5000;  // ループ合計回数
float release_freq = 5; // 増殖の頻度(s/FR)
int nikoniko_count = 0; //Objnikonikoの数の初期値
Objnikoniko[] nikoniko_array = new Objnikoniko[roop_last];
Objhole hole;
int roop = 0;    // ループ回数
float sec;

void setup(){

  size(500, 500);
  background(255);
  frameRate(FR);
  // holeの初期座標
  float[] hole_initpos = {200, 200};
  float hole_size = 70;
  hole = new Objhole(hole_initpos[0], hole_initpos[1], hole_size);
  
}

void draw(){

  background(255);
  hole.rotation(300, 300, 0.05);  
  if(roop % release_freq == 0){
    nikoniko_array[nikoniko_count] = hole.release(random(10, 65));
    nikoniko_count++;
    println(nikoniko_count);
  }
  for(int i=0; i<nikoniko_count; i++){
      nikoniko_array[i].linear(random(0, 100) * 2*PI/100, random(1, 2));
      nikoniko_array[i].rotation(random(width), random(height), random(1, 10)*0.01);
      nikoniko_array[i].disp();
  }
  
  hole.disp();  
  //saveFrame("frames//####.png");
  roop++;
  if(roop == 1000) exit();
  
}
