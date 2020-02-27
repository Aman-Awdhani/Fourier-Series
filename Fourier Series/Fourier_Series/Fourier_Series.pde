
float t = 0;
ArrayList<Float> points = new ArrayList<Float>();


void setup() {

  size(800, 500);
}

void draw() {

  background(0);
  float x=0;
  float y=0; 
  
  translate(200 ,height/2);
  for (int i=0; i<5; i++)
  {
    float pX = x;
    float pY = y;
    int n = i*2+1;
    fill(255); 
    float radius = 100 * (4/(n*PI));
    
    noFill();
    stroke(255);
    ellipse(x,y, radius*2, radius*2);
        
    y += radius * sin(n*t);
    x += radius * cos(n*t);
    ellipse(x, y, 10, 10);
    line(pX , pY, x , y); 
  }
  points.add(0,y);
  t-=.02f;  
  
  for(int i=0;i<points.size();i++){   
    strokeWeight(2);
    point(i + 300,points.get(i));  
  }
  
  if(points.size()>300){
   
    points.remove(points.size()-1);
    
  }
  
}
