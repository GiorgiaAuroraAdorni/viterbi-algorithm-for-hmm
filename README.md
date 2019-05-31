# Viterbi Algorithm for Hidden Markov Models
A MATLAB implementation of the Viterbi Algorithm for training Hidden Markov Models. 

Fifth Assignment for Probabilistic Models for Decisions course @ Unimib 18/19.



## Example

Consider the following **HMM**:



- Initial probability distribution (for example states: climb, not climb)  
  $$
  π = 
  \Bigg[
  	\begin{array}{c}
  	  0.98 \\
   	  0.02
  	\end{array} 
  \Bigg]
  $$

- Transition probability matrix (again states: climb, not climb)  
  $$
  T = 
  \Bigg[
  	\begin{array}{cc}
  	  0.4 & 0.6 \\
   	  0.1 & 0.9
  	\end{array} 
  \Bigg]
  $$

- Emission probability matrix (for example observations: injury, not injury)  
  $$
  O = 
  \Bigg[
  	\begin{array}{c}
  	  0.8 & 0.2 \\
   	  0.1 & 0.9
  	\end{array} 
  \Bigg]
  $$


Given a sequence of observation, for example *E = {not injury, injury, not injury}*, this implementation of the Viterbi algorithm computes the **most probable state sequence** and the **best sequence probability**, that is the likelihood of the path.



For the given HMM the algorithm returns:

- the best sequence probability : 

  ```matlab
  		   not injury  	  injury  	not injury
  climb:       0.1960   	  0.0627 	  0.0050
  not climb:   0.0180   	  0.0118  	  0.0339
  ```

- the most probable state sequence : 

  ```
  climb, climb, not climb
  ```
