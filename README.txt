NECESSARY INSTALLMENTS:
- Processing

CONTAINS:
- 

This visual displays the process of a simple perception. This perceptron is a model of a single neuron that receives inputs and produces an output. In this case the output is trying to guess whether a randomly generated point is above or below a line. Each mouse click iterates another step towards the end result. When Initialized, each point will be a combination of either black or white with green or red. The black simply indicates the position above the starting line, and the white indicatetes the opposite. The small red dots indicate that the perceptrons guess was wrong. The green indictaes the perceptron made a correct guess. When starting our there are mistakes on both sides of the line and they are fixed overtime with each mouse click/epoch. 

*UPDATE

- There are now two lines, the moving line per click indicates the perceptrons guess at where it needs to be. Pretty interesting stuff, if you want to mess around with it, I would suggest tweaking a few things:

1. You can set the starting line to whatever you want it to be by tweaking the first function (function)  in the 'Training' file. 

2. You can adjust the learning rate in the "TrainPerceptionWithMouse" file by tweaking the float 'lr'. This will increase the perceptron's size of each step towards finding where the line should be. (Keep in mind that if increased to much, the perceptron will take to large of steps and infinitely skip over where the line needs to be)

3. You could also tweak the mousePressed() Function in the "Simple_Perceptron" file and instead make the animation automated which may be a better visual representaion of the perceptrons process for you.
