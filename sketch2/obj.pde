class Objnikoniko{
  float xpos;
  float ypos;
  float size;
  
  Objnikoniko(float x, float y, float radius){
    xpos = x;
    ypos = y;
    size = radius;
  }
  
  void disp(){
   
    fill(255, 255, 0);
    circle(xpos, ypos, size);
  
    stroke(0, 0, 0);
    fill(0, 0, 0);
    ellipse(xpos - size/6, ypos - size/6, size/15, size/6);
    ellipse(xpos + size/6, ypos - size/6, size/15, size/6);

    strokeWeight(3);
    noFill();
    arc(xpos, ypos + size/6, size/2, size/3, PI/100, PI*99/100);
  }
 
  void rotation(float x, float y, float speed){
    float xvec = xpos - x;  // 回転中心からオブジェクトへ向かうxベクトル
    float yvec = ypos - y;  // 回転中心からオブジェクトへ向かうyベクトル
    float vec_dist = dist(xpos, ypos, x, y);
    float vec_dir = atan2(yvec, xvec);
    xpos = x + vec_dist*(cos(vec_dir)*cos(speed) - sin(vec_dir)*sin(speed));
    ypos = y + vec_dist*(sin(vec_dir)*cos(speed) + cos(vec_dir)*sin(speed));
  }
   
  void linear(float ang, float speed){
    // 直線移動
    xpos += cos(ang) * speed;
    ypos += sin(ang) * speed;
  }
}

class Objhole{
  float xpos;
  float ypos;
  float size;
  
  Objhole(float x, float y, float radius){
    xpos = x;
    ypos = y;
    size = radius;
  }
  
  void disp(){
    fill(0, 0, 0);
    circle(xpos, ypos, size);
    for(int i = 0; i < 10; i++){
      int c = 0 + i * (255/10);
      stroke(c);
      noFill();
      circle(xpos, ypos, size - i);
    }
    for(int i = 10; i < 20; i++){
      int c = 255 - i * (255/20);
      stroke(c);
      noFill();
      circle(xpos, ypos, size - i);
    }
  }
 
  void rotation(float x, float y, float speed){
    float xvec = xpos - x;  // 回転中心からオブジェクトへ向かうxベクトル
    float yvec = ypos - y;  // 回転中心からオブジェクトへ向かうyベクトル
    float vec_dist = dist(xpos, ypos, x, y);
    float vec_dir = atan2(yvec, xvec);
    xpos = x + vec_dist*(cos(vec_dir)*cos(speed) - sin(vec_dir)*sin(speed));
    ypos = y + vec_dist*(sin(vec_dir)*cos(speed) + cos(vec_dir)*sin(speed));
  }
  
  Objnikoniko release(float nikoniko_size){
    Objnikoniko niko = new Objnikoniko(xpos, ypos, nikoniko_size);
    return niko;
  }
}
