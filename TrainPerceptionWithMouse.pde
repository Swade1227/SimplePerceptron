import java.util.Random;
/* Perceptron:
1. For every input, multiply that input by its weight
2. Sum of all weighted inputs.
3. Compute output based on that sum passed through an activation function (sin of sum?)
*/

class Perceptron {
  float[] weights = new float[2];
  //learning rate
  float lr = 0.1;
  Random random = new Random();
  int someInt = random.nextInt(3) - 1;
  //Constructor
  Perceptron() {
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
}
