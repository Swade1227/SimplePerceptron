import java.util.Random;
/* Perceptron:
1. For every input, multiply that input by its weight
2. Sum of all weighted inputs.
3. Compute output based on that sum passed through an activation function (sin of sum?)
*/

class Perceptron {
  float[] weights = new float[3];
  //learning rate
  float lr = 0.1;
  float someInt = random(-1, 1);
  //Constructor
  Perceptron(int n) {
    weights = new float[n];
    //Intialize random weights
    for (int i = 0; i < weights.length; i++) {
      weights[i] = someInt; 
    }
  }
  
  //activation function
  int sign(float n) {
    if (n >= 0) {
      return 1;
    } else {
      return -1;
    }
  }

  //output
  int guess(float[] inputs) {
    float sum = 0;
    for (int i = 0; i < weights.length; i++) {
      sum += inputs[i] * weights[i];
    }
    int output = sign(sum);
    return output;
  }
  
  void train(float[] inputs, int target) {
    int guess = guess(inputs);
    int error = target - guess;
    //tune weights
    for (int i = 0; i < weights.length; i++) {
      weights[i] += error * inputs[i] * lr;
    }
  }
  
  float guessY(float x) {
    float w0 = weights[0];
    float w1 = weights[1];
    float w2 = weights[2];
    
    return -(w2/w1) - (w0/w1) * x;
  }
  
}
