Perceptron brain;

Point[] points = new Point[100];

void setup() {
  size(800,800);
  brain = new Perceptron();
  
  for (int j = 0; j < points.length; j++) {
    points[j] = new Point();
  }
  
  float[] inputs = {-1, 0.5};
  int guess = brain.guess(inputs);
  println(guess);
}

void draw() {
  background(255);
  stroke(0);
  line(0,0, width, height);
  for (Point pt: points) {
    pt.show(); 
  } 
  
  for (Point pt: points) {
    float[] inputs = {pt.x, pt.y};
    int target = pt.label;
    
    int guess = brain.guess(inputs);
   
    if (guess == target) {
      fill (0, 255, 0);
    } else {
      fill(255, 0, 0); 
    }
      noStroke();
      ellipse(pt.x, pt.y, 4, 4);
    }   
}

void mousePressed() {
  for (Point pt: points) {
    float[] inputs = {pt.x, pt.y};
    int target = pt.label;
    brain.train(inputs, pt.label);
}
}
