es_un_equipo(midland).
es_un_equipo(velez).
limita_con(brasil,argentina).
limita_con(brasil,uruguay).
limita_con(argentina,chile).
limita_con(argentina,uruguay).
limitrofes(X,Y):-   limita_con(X,Y) ; limita_con(Y,X).
%superficie por pais soy dejean
superficie_pais(brasil,8456349).
superficie_pais(uruguay,176609).

pais_pequeño(X):- superficie_pais(X,Y), Y < 1000000.

translimitrofes(X,Y):-	   limitrofes(Y,Z),
	                   limitrofes(X,Z),
			   dif(X,Y),
			   not(limitrofes(X,Y)).



