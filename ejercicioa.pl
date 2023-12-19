ordenada([_]).
ordenada([X,Y|L]) :-
X =< Y,
ordenada([Y|L]).