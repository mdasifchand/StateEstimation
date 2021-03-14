# Landmark based localization (EKF)

# Assumptions: 

#### Gaussian Distributions and noise 

#### Linear Motion and Measurement Model (Observation Model)


x(t) = A(t-1)+ B(t)*u(t) + e(t) <br/>
z(t) = C(t)*x(t) + d(t)

However most of the problems are not linear in nature. And this forms the crux of the problem

Also the relevance of the motion and observation model comes from Bayesian inference of the graph .

Bayesian inference is basically used to derive the posterior probability from two important known values : <br/>
- Prior
- Likelihood  

P(A/B) (read probaility of A given B) ~ proporitional to P(B/A) (read likelihood of A given B) times P(B) (probability of occurence of B)

there is a denominator P(B)- > also called as marginal likelihood. Which is what you get after you integrate P(B/A) of likelhood over all possible A's

Assuming, you move ahead along the discrete time intervals, in order to estimate stochastic probabilistic distribution
between X(t-1) and X (t)

X ~ P(X), X is random variable and i.i.d (Need a check here). X represents our state at every interval in our case of 
2d Robot, two parameters are enough to estimate any state [ range, bearing ]


We consider a simple Robot with a 2 wheel differential encoder drive for simplicity. Similar idea can be extended
for highly complex system. 

Assume your robot looks something like this (Top view). There is a sensor mounted at the center


        
        ||              || 
        ||-----[-]------||
        ||              ||
        

![Image ](https://github.com/mdasifchand/StateEstimation/blob/main/images/lidar_example.png)


        
### Motion Model :

This is the model of how the motion of a Robot is performed between time frame t-1 to t

TODO:
Model
Linearization of Model (if it's non linear)
Time update step
_________________________________________________________________________________________________

### Observation Model :


_________________________________________________________________________________________________

Dependencies : Eigen, OpenGL
