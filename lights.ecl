:- lib(lists).
:- lib(fd).
:- lib(fd_search).

%Q6

lights(Lights) :-
    
    Lights = [A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P],
    Lights::0..1,
    
    At #= (_ * 2),
    At #= A + B + C + D + E + I + M,
    
    Bt #= (_ * 2),
    Bt #= B + A + C + D + F + J + N,
    
    Ct #= (_ * 2),
    Ct #= C + A + B + D + G + K + O,
    
    Dt #= (_ * 2) + 1,
    Dt #= D + A + B + C + H + L + P,
    
    Et #= (_ * 2),
    Et #= E + F + G + H + A + I + M,
    
    Ft #= (_ * 2),
    Ft #= F + E + G + H + B + J + N,
    
    Gt #= (_ * 2),
    Gt #= G + E + F + H + C + K + O,
    
    Ht #= (_ * 2) + 1,
    Ht #= H + E + F + G + D + L + P,
    
    It #= (_ * 2) + 1,
    It #= I + J + K + L + A + E + M,
    
    Jt #= (_ * 2),
    Jt #= J + I + K + L + B + F + N,
    
    Kt #= (_ * 2) + 1,
    Kt #= K + I + J + L + C + G + O,
    
    Lt #= (_ * 2),
    Lt #= L + I + J + K + G + H + P,
    
    Mt #= (_ * 2) + 1,
    Mt #= M + N + O + P + A + E + I,
    
    Nt #= (_ * 2),
    Nt #= N + M + O + P + B + F + J,
    
    Ot #= (_ * 2),
    Ot #= O + M + N + P + C + G + K,
    
    Pt #= (_ * 2),
    Pt #= P + M + N + O + D + H + L,
    
    labeling(Lights).
    
