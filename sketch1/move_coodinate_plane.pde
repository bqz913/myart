// 2変数を動かす関数を書く予定
class point{
  float xpos;
  float ypos;
  point(float x, float y){
    xpos = x;
    ypos = y;
  }
  
  void rotation(float x, float y, float speed){
    // x, yを中心に回転
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
  
  float loc(int ax){
    // ax = 0ならx座標を返し，ax = 1ならy座標を返す
    if(ax == 0){
      return xpos;
    }else if(ax == 1){
      return ypos;
    }else{
      print("Error. AX is not 0 or 1");
      return 0.;
    }
  }
}
