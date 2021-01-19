class Obj{
  float xpos;
  float ypos;
  float[] size = new float[2];
  PImage img;
  
  Obj(PImage image, float x, float y, float wid){
    xpos = x;
    ypos = y;
    size[0] = wid;
    size[1] = wid * 1220 / 704;
    img = image;
  }
  
  void disp(){
    image(img, xpos, ypos, int(size[0]), int(size[1]));
  }
   
  void linear(float ang, float speed){
    // 直線移動
    xpos += cos(ang) * speed;
    ypos += sin(ang) * speed;
  }
}
