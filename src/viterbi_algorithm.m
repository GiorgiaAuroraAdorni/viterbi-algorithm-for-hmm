function [bestSequenceProbability, path] = viterbi_algorithm(prior, transmat, obsmat, sequence)%
    % Inputs:
    % prior(i) = Pr(Q(1) = i)
    % transmat(i,j) = Pr(Q(t+1)=j | Q(t)=i)
    % obsmat(i,t) = Pr(y(t) | Q(t)=i)
    %
    % Outputs:
    % path(t) = q(t), where q1 ... qT is the argmax of the above expression.
    % bestSequenceProbability is the likelihood of the path(s)


    % bestSequenceProbability(j,t) = prob. of the best sequence of length t-1 and then going to state j, and O(1:t)
    % bestPredecessorState(j,t) = the best predecessor state, given that we ended up in state j at t


    T = size(sequence, 2); %num. of observations
    Q = length(prior); %num. of states

    bestSequenceProbability = zeros(Q,T);
    bestPredecessorState = zeros(Q,T);
    path = zeros(1,T);

    t=1;
    bestPredecessorState(:,t) = 0; %no predecessor at time 1
    ............ % update state at time 1 with observazion obs_1
    ............ % normalization  of the best sequence probability 

    for t=2:T
      for j=1:Q
        ............ %at each time choose the optimal forward jump
        ............ %update with observations
      end
       ............ %normalization  of the best sequence probability
    end
    ............    %at the end, start from the optimal "ending" state
    for t=T-1:-1:1  %backpropagation
     ............  %chose the best predecessor
    end

end
