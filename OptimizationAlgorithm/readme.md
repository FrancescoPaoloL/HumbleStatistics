# Gradient descent

The gradient descent is an optimization algorithm used to find the minimum (or sometimes maximum) of a function. It does this by iteratively adjusting the input variables of the function in a way that gradually reduces the value of the function.

The formula for updating the parameters in gradient descent depends on the specific problem and the type of gradient descent algorithm being used. However, in its basic form, the update rule for gradient descent can be expressed as follows:

![Gradient Descent Algorithm](https://latex.codecogs.com/png.latex?\color{White}%5Ctheta%20%3A%3D%20%5Ctheta%20-%20%5Calpha%20%5Ccdot%20%5Cnabla%20J%28%5Ctheta%29)

In this formula:
- θ is the parameters being optimized, 
- α is the learning rate that determines the step size, and 
- ∇J(θ) is the gradient of the cost function J with respect to θ, that provides information about the direction and magnitude of the steepest descent. 

In each iteration, θ is updated by subtracting the product of the learning rate α and the gradient. This moves θ towards the minimum, gradually minimizing the cost function J.

In this example code we generate random data, fit a quadratic curve to it using gradient descent, and visualizes the cost history and learning curve.

<!-- Different variants of gradient descent exist, such as batch gradient descent, stochastic gradient descent, and mini-batch gradient descent, which may have slight variations in the update rule. -->