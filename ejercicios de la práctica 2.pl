profesor(913, 'Emilio Castan Rocha',['Principios Electricos Y Aplicaciones Digitales', 'Lenguajes De Interfaz'],10,17,18).

profesor(1237, 'Juan Carlos Lopez Arcos',['Principios Electricos Y Aplicaciones Digitales', 'Fundamentos De Telecomunicaciones'],8,16,18).

profesor(962, 'Gregorio Hernandez Palmer',['Principios Electricos Y Aplicaciones Digitales'],8,16,12).

profesor(329, 'Rodolfo Abraham Pazos Rangel',['Diseño De Algoritmos', 'Taller De Base De Datos'],8,18,25).

profesor(840, 'Laura Cruz Reyes',['Diseño De Algoritmos', 'Taller De Investigacion I','Taller De Investigacion II', 'Estructura De Datos'],8,16,18).

profesor(886, 'Jose Apolinar Ramirez Saldivar',['Estructura De Datos', 'Programacion Logica Y Funcional'],9,14,18).

profesor(409, 'Clara Alicia Vela Ortega',['Estructura De Datos', 'Programacion Orientada A Objetos'],9,15,18).

profesor(419, 'Alberto Chong Carrasco',['Algebra Lineal'],11,20,18).

%47
profesor(973, 'Faustino Ochoa Balderas',['Algebra Lineal'],10,21,25).

%48
profesor(1087, 'Nicolas Duron Mendoza',['Algebra Lineal'],9,20,25).

%49
profesor(695, 'Juan Jose Rodriguez Valdez',['Algebra Lineal'],8,16,18).

%50
profesor(1244, 'Liz Annel Rodriguez Zapata',['Algebra Lineal'],10,18,18).

%51
profesor(1330, 'Carlos Alberto Moreno Mendoza',['Algebra Lineal'],9,15,12).

%52
profesor(681, 'Maria Del Consuelo Morales Rubio',['Algebra Lineal', 'Calculo Integral', 'Calculo Vectorial'],9,19,18).

%%	%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


grupo('323A', 'Principios Electricos Y Aplicaciones Digitales',7,20).

grupo('323B', 'Principios Electricos Y Aplicaciones Digitales',13,39).

grupo('323C', 'Principios Electricos Y Aplicaciones Digitales',13,25).

grupo('319A', 'Algebra Lineal',9,40).

grupo('319B', 'Algebra Lineal',10,29).

grupo('319C', 'Algebra Lineal',10,31).

grupo('319D', 'Algebra Lineal',11,20).

grupo('319E', 'Algebra Lineal',20,25).

grupo('725A', 'Diseño De Algoritmos',13,25).

grupo('725B', 'Diseño De Algoritmos',14,25).

grupo('725C', 'Diseño De Algoritmos',14,15).

grupo('317A', 'Estructura De Datos',11,40).

grupo('317B', 'Estructura De Datos',16,25).

%%	%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% EJERCICIO DE LA PRÁCTICA: AÑADIR LAS AULAS DE FORMA ALEATORIA

aulas_sistemas(40,['FFA','FFB','FFC','FFD','FFE','FF6']).
aulas_sistemas(25,['FF1','FF2','FF3','FF4','FF5']).



%%%%%% %%%%%%%%%%CÓDIGO PRINCIPAL: ESCRIBA main(_). EN LA CONSOLA DE PROLOG PARA EJECUTAR EL PROGRAMA %%%%%%%%%%%%%%%%%%%%%%%%%

main(_):-
	crear_grupo(CVE_GPO,Materia,Profesor),
	writeln(CVE_GPO),
	writeln(Materia),
	writeln(Profesor).

crear_grupo(CVE_GPO,Materia,Profesor):-
	grupo(CVE_GPO,Materia,_,_),
	obtener_profesor(Materia,Profesor).

obtener_profesor(Materia,Profesor):-
	profesor(_,Profesor,Materias_Profesor,_,_,_),
	buscar_materia_profe(Materia,Materias_Profesor).

buscar_materia_profe(_,[]):-!,fail.
buscar_materia_profe(Materia,[Materia|_]):-!,true.
buscar_materia_profe(Materia,[_|L]):-buscar_materia_profe(Materia,L).
