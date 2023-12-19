padre(clara,pedro).
padre(pedro,jose).
padre(ana,clara).
padre(jose,clara).

abuelo(X,Y) :-
	padre(X,Z), padre(Z,Y).

conexion(a,b,7).
conexion(d,h,4).
conexion(h,f,9).
conexion(i,f,11).
conexion(f,g,10).
conexion(f,a,0).
conexion(a,b,7).
conexion(d,i,2).

camino(X,Y):-conexion(X,Y,_).
camino(X,Y):-conexion(X,Z,_),camino(Z,Y).

listar(L):-
	H=[1,2],
	C=[3,4,5],
	L=[H|C].

progenitor(pedro,[ana,gabo]).
progenitor(rammus,[calvin,clain,manzana]).
segundoHijo(Papa,Hijo):-
	progenitor(Papa,[_,Hijo|_]).



