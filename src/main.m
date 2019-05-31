prior = [0.98; 0.02];

T = [0.4, 0.6;
     0.1, 0.9];
 
O = [0.8, 0.2;
     0.1, 0.9];
 
new_sequence = [2 1 2];
 
[bestSequenceProbability, path] = viterbi_algorithm(prior, T, O, new_sequence);

bestSequenceProbability
path
