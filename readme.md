## Introduction to Gradient Descent
Gradient descent is an optimization algorithm used to minimize the value of a function. The algorithm works by iteratively adjusting the input parameters of the function in the direction of the steepest descent (negative gradient) until a minimum value of the function is reached.

Here's how the algorithm works in more detail:

Choose an initial set of input parameters for the function.
Calculate the gradient of the function with respect to the input parameters at the current point.
Update the input parameters by moving in the direction of the negative gradient, with a step size determined by a learning rate hyperparameter.
Repeat steps 2 and 3 until the algorithm converges to a minimum value of the function, or until a stopping criterion is met.
The idea behind gradient descent is that by moving in the direction of the negative gradient, we are guaranteed to decrease the value of the function at each step, eventually leading us to a local minimum. The learning rate hyperparameter controls the step size of each update, and needs to be tuned carefully to avoid oscillations or slow convergence.

Gradient descent is widely used in machine learning to optimize the parameters of models such as neural networks and linear regression. By minimizing a loss function using gradient descent, we can find the best set of parameters that fit the data and make accurate predictions.


## Gradient Descent Example for Linear Regression
This example project demonstrates how the [gradient descent](http://en.wikipedia.org/wiki/Gradient_descent) algorithm may be used to solve a [linear regression](http://en.wikipedia.org/wiki/Linear_regression) problem. A more detailed description of this example can be found [here](https://spin.atomicobject.com/2014/06/24/gradient-descent-linear-regression/).

### Code Requirements
The example code is in Python ([version 2.6](https://www.python.org/doc/versions/) or higher will work). The only other requirement is [NumPy](http://www.numpy.org/).

### Description
This code demonstrates how a gradient descent search may be used to solve the linear regression problem of fitting a line to a set of points. In this problem, we wish to model a set of points using a line. The line model is defined by two parameters - the line's slope `m`, and y-intercept `b`. Gradient descent attemps to find the best values for these parameters, subject to an error function.

The code contains a main function called `run`. This function defines a set of parameters used in the gradient descent algorithm including an initial guess of the line slope and y-intercept, the learning rate to use, and the number of iterations to run gradient descent for. 

```python
initial_b = 0 # initial y-intercept guess
initial_m = 0 # initial slope guess
num_iterations = 1000
``` 

Using these parameters a gradient descent search is executed on a sample data set of 100 ponts. Here is a visualization of the search running for 200 iterations using an initial guess of `m = 0`, `b = 0`, and a learning rate of `0.000005`.

<img src="https://github.com/mattnedrich/GradientDescentExample/blob/master/gradient_descent_example.gif" width="580">

### Execution
To run the example, simply run the `gradient_descent_example.py` file using Python

```
python gradient_descent_example.py
```

The output will look like this

```
Starting gradient descent at b = 0, m = 0, error = 5565.10783448
Running...
After 1000 iterations b = 0.0889365199374, m = 1.47774408519, error = 112.614810116
```
