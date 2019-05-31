# Viterbi Algorithm for Hidden Markov Models
A MATLAB implementation of the Viterbi Algorithm for training Hidden Markov Models. 

Fifth Assignment for Probabilistic Models for Decisions course @ Unimib 18/19.



## Example

Consider the following **HMM**:



- Initial probability distribution (for example states: climb, not climb)  

  ![](https://latex.codecogs.com/gif.latex?%5Cpi%3D%20%5CBigg%5B%20%5Cbegin%7Bmatrix%7D%200.98%5C%5C%200.02%20%5Cend%7Barray%7D%20%5CBigg%5D)

- Transition probability matrix (again states: climb, not climb)  

  ![This is the rendered form of the equation. You can not edit this directly. Right click will give you the option to save the image, and in most browsers you can drag the image onto your desktop or another program.](https://latex.codecogs.com/gif.latex?T%20%3D%20%5CBigg%5B%20%5Cbegin%7Bmatrix%7D%200.4%20%26%200.6%20%5C%5C%200.1%20%26%200.9%20%5Cend%7Bmatrix%7D%20%5CBigg%5D)

- Emission probability matrix (for example observations: injury, not injury)  

  ![](https://latex.codecogs.com/gif.latex?O%20%3D%20%5CBigg%5B%20%5Cbegin%7Bmatrix%7D%200.8%20%26%200.2%20%5C%5C%200.1%20%26%200.9%20%5Cend%7Bmatrix%7D%20%5CBigg%5D)

Given a sequence of observation, for example *E = {not injury, injury, not injury}*, this implementation of the Viterbi algorithm computes the **most probable state sequence** and the **best sequence probability**, that is the likelihood of the path.



For the given HMM the algorithm returns:

- the best sequence probability :

|           | not injury | injury | not injury |
| --------- | :--------: | :----: | :--------: |
| climb     |   0.1960   | 0.0627 |   0.0050   |
| not climb |   0.0180   | 0.0118 |   0.0339   |

- the most probable state sequence : 

  ```
  climb, climb, not climb
  ```
