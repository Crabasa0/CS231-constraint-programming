:- lib(lists).
:- lib(fd).
:- lib(fd_search).

%Q1

setup(Teas) :-
	    Teas = [Good, Inferior, Indian],

	    Teas :: 0..20,

	    Good + Inferior + Indian #= 20,

	    (Good * 30) + (Inferior * 27) + (Indian * 21) #= 570,

	    minimize(labeling(Teas), Good).
