:- lib(lists).
:- lib(fd).
:- lib(fd_search).

%Q4

eggs(E):-


    L = [N],
    L::0..99999,
    member(E, L),

    E #= (M2 * 2) + 1,
    E #= (M3 * 3) + 1,
    E #= (M4 * 4) + 1,
    E #= (M5 * 5) + 1,
    E #= (M6 * 6) + 1,
    E #= (M7 * 7),
    
    N = E,
    
    minimize(labeling(L), N).