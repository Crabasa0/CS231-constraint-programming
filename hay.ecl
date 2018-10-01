:- lib(lists).
:- lib(fd).
:- lib(fd_search).

%Q5

hay(Trusses):-
    Weights = [110, 112, 113, 114, 115, 116, 117, 118, 120, 121],
    Trusses = [A, B, C, D, E],
    Trusses::0..121,
    Fweights = [W1, W2, W3, W4, W5, W6, W7, W8, W9, W10],
    A + B #= W1, member(W1, Weights), %%W on left side of #=?
    A + C #= W2, member(W2, Weights),
    A + D #= W3, member(W3, Weights),
    A + E #= W4, member(W4, Weights),
    B + C #= W5, member(W5, Weights),
    B + D #= W6, member(W6, Weights),
    B + E #= W7, member(W7, Weights),
    C + D #= W8, member(W8, Weights),
    C + E #= W9, member(W9, Weights),
    D + E #= W10, member(W10, Weights),
    
    alldifferent(Fweights),
    
    labeling(Trusses).
    
    