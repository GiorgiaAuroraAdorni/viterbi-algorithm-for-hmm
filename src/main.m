% P0: pigreco
P0 = [0.2; 
      0.5;
      0.3];

% A0: T
A0 =[ 0.8 0.1  0.1;
     0.05 0.9 0.05;
      0.1 0.1  0.8];

% B0: O
B0 = [0.3 0.3 0.4   0   0   0   0   0   0   0;
        0   0   0 0.2 0.2 0.3 0.3   0   0   0;
        0   0   0   0   0   0   0 0.3 0.5 0.2];
    
% #4: sessioni #5: simboli emessi per ogni sequenza
sessioni = dhmm_sample(P0, A0, B0, 10000, 10); 

Q = numel(P0);
O = size(B0, 2);

P1 = normalise(rand(Q, 1));
A1 = mk_stochastic(rand(Q, Q));
B1 = mk_stochastic(rand(Q, O));

% LL: Log Likelihood
[LL, P2, A2, B2] = dhmm_em(sessioni, P1, A1, B1, 'max_iter', 50);

loglik = dhmm_logprob(sessioni, P2, A2, B2);

% sequenza di osservazione
nuovaSequenza = [1 2 3 2 4 5 6 5 7 8 9 8 7];

viterbi_algorithm(P0, A0, B0, nuovaSequenza);

