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

    strokeWeight(size/10);
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
}
