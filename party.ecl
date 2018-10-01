:- lib(lists).
:- lib(fd).
:- lib(fd_search).

%Q9

guests(Guests, N) :-

    List = [tom, fred, billy, tim, frank, barry, sue, jane, betty, ellen, joan, betsy],
    
    Gs = [Tom, Fred, Billy, Tim, Frank, Barry, Sue, Jane, Betty, Ellen, Joan, Betsy],
    Gs::0..1,
    
    %1 and 2
    Tom + Fred + Billy + Tim + Frank + Barry + Sue + Jane + Betty + Ellen + Joan + Betsy #= N,
    
    %3
    Saturday = Fred + Jane + Frank + Joan,
    Friday = Betty + Barry + Betsy + Billy,
    BothDays = Tom + Sue + Tim + Ellen,
    ((Saturday + BothDays #> 0, Friday #= 0);
    (Friday + BothDays #> 0, Saturday #= 0)),
    
    %4
    Interesting = Fred + Betty + Frank + Betsy,
    Interesting #> 0,
    
    %5
    Funny = Tom + Sue + Tim + Ellen,
    Funny #> 0,
    
    %6
    MenTotal = Tom + Fred + Billy + Tim + Frank + Barry,
    WomenTotal = Sue + Jane + Betty + Ellen + Joan + Betsy,
    MenTotal #= WomenTotal,
    
    %7
    ((Tom #= 0); (Fred + Sue #> 0)),
    ((Fred #= 0); (Tom + Billy #> 0)),
    ((Billy #= 0); (Fred + Betty #> 0)),
    ((Betty #= 0); (Sue + Billy #> 0)),
    ((Sue #= 0); (Betty + Jane #> 0)),
    ((Jane #= 0); (Sue #= 1)),
    ((Tim #= 0); (Frank + Ellen #> 0)),
    ((Frank #= 0); (Tim + Barry #> 0)),
    ((Barry #= 0); (Betsy + Frank #> 0)),
    ((Betsy #= 0); (Barry + Ellen #> 0)),
    ((Ellen #= 0); (Tim + Betsy + Joan #> 0)),
    ((Joan #= 0); (Ellen #= 1)),
    
    %8
    (Billy + Fred #<= 1),
    (Jane + Sue #<= 1),
    (Barry + Frank #<= 1),
    (Ellen + Joan #<= 1),
    
    %9
    Democrats = Tom + Sue + Tim + Ellen,
    Republicans = Fred + Jane + Frank + Joan,
    ((Democrats #= 0, Republicans #= 0); (Democrats #> 0, Republicans #= 0); (Republicans #> 0, Democrats #= 0)),

    
    labeling(Gs),
    
    buildGs(Guests, Gs, List).
    
    
buildGs([], [], []).
buildGs(Gs, [In|RestIn], [Ppl|RestPpl]) :- In == 1, buildGs(Z, RestIn, RestPpl), append([Ppl], Z, Gs).
buildGs(Gs, [In|RestIn], [Ppl|RestPpl]) :- In == 0, buildGs(Gs, RestIn, RestPpl).    
    