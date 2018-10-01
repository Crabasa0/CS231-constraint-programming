:- lib(lists).
:- lib(fd).
:- lib(fd_search).

%Q7

planets(Planets):-
    Letters = [P, L, U, T, O, R, A, N, S, E, J, I, M, H, V, C, Y],
    
    Letters::0..50,
    
    P + L + U + T + O #= 26,
    U + R + A + N + U + S #= 36,
    N + E + P + T + U + N + E #= 29,
    S + A + T + U + R + N #= 33,
    J + U + P + I + T + E + R #= 48,
    M + A + R + S #= 32,
    E + A + R + T + H #= 31,
    M + O + O + N #= 36,
    V + E + N + U + S #= 37,
    M + E + R + C + U + R + Y #= 33,
    S + U + N #= 18,
    
    alldifferent(Letters),
    
    labeling(Letters),
    
    eval(P + L + A + N + E + T + S, Planets).
    
    
    
    
    