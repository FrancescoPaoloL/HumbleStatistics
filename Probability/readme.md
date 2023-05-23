# Uniform and non-uniform distribution

By running this script, you can observe and compare the characteristics of uniform and non-uniform distributions. Let me roughly define some concepts.


**Uniform Distribution**:
A uniform distribution means that every outcome within a range has an equal chance of happening. It is characterized by a constant probability density function (PDF)

The probability density function (PDF) of a uniform distribution can be expressed as:

![Uniform Distribution PDF](https://latex.codecogs.com/png.latex?\color{White}{f(x)}&space;=&space;\begin{cases}&space;\frac{1}{b-a}&space;,&space;\text{if}&space;\:a\leq&space;x\leq&space;b\\&space;0&space;,&space;\text{otherwise}&space;\end{cases})

Where:
- *a* is the lower bound of the range
- *b* is the upper bound of the range

**Non-uniform Distribution**:
A non-uniform distribution is just any distribution where the probabilities are not the same.
The specific formula for a non-uniform distribution depends on the distribution itself. Examples of non-uniform distributions include the normal distribution, exponential distribution, binomial distribution, and many others. 

**Cumulative probability**:
Cumulative probability refers to the accumulation of probabilities up to a certain point in a probability distribution. It represents the probability that a random variable takes on a value less than or equal to a specific value.

In the script, the cumulative probability is used to determine which choice to select based on the non-uniform distribution. When the randomly generated number is less than or equal to the cumulative probability, it means that the cumulative probability has reached or surpassed the randomly generated number, and that particular choice is selected.
