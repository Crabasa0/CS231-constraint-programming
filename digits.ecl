:- lib(lists).
:- lib(fd).
:- lib(fd_search).

%Q3

dig(Digits):-
    Digits = [A,B,C,D,E,F,G,H,I],
    Digits:: 1..9,
    alldifferent(Digits),
    ((100 * A) + (10 * B) + C) * ((10 * D) + E) #= P,
    ((10 * F) + G) * ((10 * H) + I) #= P,
    Product #= -P,
    
    minimize(labeling(Digits), Product).
    
allDig(Digits):- 
    Digits = [A,B,C,D,E,F,G,H,I],
    Digits:: 1..9,
    alldifferent(Digits),
    ((100 * A) + (10 * B) + C) * ((10 * D) + E) #= P,
    ((10 * F) + G) * ((10 * H) + I) #= P,
    
    labeling(Digits).