function [bestSequenceProbability, path] = viterbi_algorithm(prior, transmat, obsmat, sequence)
    % Inputs:
    % prior(i) = Pr(Q(1) = i)
    % transmat(i, j) = Pr(Q(t + 1) = j | Q(t) = i)
    % obsmat(i, t) = Pr(y(t) | Q(t) = i)
    %
    % Outputs:
    % path(t) = q(t), where q1 ... qT is the argmax of the above expression.
    % bestSequenceProbability is the likelihood of the path(s)


    % bestSequenceProbability(j, t) = prob. of the best sequence of length t-1 and then going to state j, and O(1:t)
    % bestPredecessorState(j, t) = the best predecessor state, given that we ended up in state j at t

    T = size(sequence, 2);  % num. of observations
    Q = length(prior);      % num. of states

    bestSequenceProbability = zeros(Q, T);
    bestPredecessorState = zeros(Q, T);
    path = zeros(1, T);

    bestPredecessorState(:, 1) = 0; % no predecessor at time 1
    
    for j = 1:Q
        % update state at time 1 with observation obs_1
        bestSequenceProbability(j, 1) = prior(j) * obsmat(j, sequence(1)); 
    end
    
    % normalisation of the best sequence probability 

    for t = 2:T
      for j = 1:Q
         % at each time choose the optimal forward jump
         pred = argmax(bestSequenceProbability(:, t - 1));
        
         % update with observations
         bestPredecessorState(j, t) = pred;
         bestSequenceProbability(j, t) = bestSequenceProbability(pred, t - 1) * transmat(pred, j) * obsmat(j, sequence(t));
      end
      
        % normalisation  of the best sequence probability
    end
    
    % backpropagation
    % at the end, start from the optimal "ending" state
    path(T) = argmax(bestSequenceProbability(:, T));
    
    for t = T - 1:-1:1
       % choose the best predecessor
       path(t) = bestPredecessorState(path(t + 1), t + 1);
    end

end
