permutacion([],[]).
permutacion(L1,[X|L2]) :-
    select(X,L1,L3),
    permutacion(L3,L2).

todos_iguales([]).
todos_iguales([_]).
todos_iguales([X,X|L]) :-
    todos_iguales([X|L]).
