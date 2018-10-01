:- lib(lists).
:- lib(fd).
:- lib(fd_search).

sons(Sons) :-

    Sons = [S1, S2, S3],
    S1 = [Nf1, Nh1, Ne1],
    S2 = [Nf2, Nh2, Ne2],
    S3 = [Nf3, Nh3, Ne3],
    
    Full = 2, Half = 1, Empty = 0,
    
    Nf1 + Nf2 + Nf3 #= 7,
    Nh1 + Nh2 + Nh3 #= 7,
    Ne1 + Ne2 + Ne3 #= 7,
    
    Nf1 + Nh1 + Ne1 #= N,
    Nf2 + Nh2 + Ne2 #= N,
    Nf3 + Nh3 + Ne3 #= N,
    
    (Nf1 * Full) + (Nh1 * Half) + (Ne1 * Empty) #= W,
    (Nf2 * Full) + (Nh2 * Half) + (Ne2 * Empty) #= W,
    (Nf3 * Full) + (Nh3 * Half) + (Ne3 * Empty) #= W,
    
    Nf1 #<= 4, Nh1 #<= 4, Ne1 #<= 4,
    Nf2 #<= 4, Nh2 #<= 4, Ne2 #<= 4,
    Nf3 #<= 4, Nh3 #<= 4, Ne3 #<= 4,
    
    labeling(S1), labeling(S2), labeling(S3),
    labeling(Sons).