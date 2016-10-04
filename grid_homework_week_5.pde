void setup () {
  
   size(700,700);


//int [] arrayX={10, 20, 30};
//int [] arrayY={40,100,200};
}

void draw () {
  
  //float r = map(mouseX, 0, width, 0, 255);
  //float g = map(mouseY, 0, height, 0, 255);
  //float b = map(mouseY, 0, height, 0, 255);
  
  float d = dist(mouseX,mouseY,width/2,height/2);
  float a = map(d, 0, width/2, 100, 255); 
    
    for(int i=0; i<width; i+=20) {
     for(int j=0; j<height; j+=20) {
      pushMatrix();
       fill(map(i,0,width,10,255)+d, map(j,0,height,50,255)+d, 145, a);
       rect(i, j, 10, 10);  
       popMatrix();
     }
     
  }
}