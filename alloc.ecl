:- lib(lists).
:- lib(fd).
:- lib(fd_search).

alloc(L, K):-

    L = [A, B],
    
    L :: 0..100,
    
    A + B #= 100,
    
    K = [Ka, Kb],
    
    K :: 0..500,
    
    Ka + Kb #= 500,
    
    %labeling(L),
    
    %labeling(K),
    
    Y = A^0.25 * Ka^0.25 + B^0.25 + Kb^0.25,
    
    minimize(labeling(L), -1 * Y),
    minimize(labeling(K), -1 * Y).