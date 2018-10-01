:- lib(lists).
:- lib(fd).
:- lib(fd_search).

%Q2

beer(Beer):-

    Quantities = [15, 31, 19, 20, 16, 18],
    Barrels = [A, B, C, D, E, Beer],
    Barrels :: 15..31,
    
    Sale1 #= A + B,
    Sale2 #= C + D + E,
    Sale2 #= Sale1 * 2,
    
    member(A, Quantities),
    member(B, Quantities),
    member(C, Quantities),
    member(D, Quantities),
    member(E, Quantities),
    member(Beer, Quantities),
    
    alldifferent(Barrels).
