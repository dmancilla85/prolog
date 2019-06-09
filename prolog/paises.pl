% Uruguay es un país.
es_un_pais(uruguay).
es_un_pais(chile).
es_un_pais(argentina).
es_un_pais(brasil).
es_un_pais(paraguay).
es_un_pais(venezuela).
es_un_pais(bolivia).
es_un_pais(colombia).
es_un_pais(ecuador).
es_un_pais(guyana).
es_un_pais(suriname).
es_un_pais(french_guiana).



% Brasil es limítrofe de Argentina.
limita_con(brasil,argentina).
limita_con(brasil,uruguay).
limita_con(brasil,paraguay).
limita_con(brasil,bolivia).
limita_con(brasil,peru).
limita_con(brasil,colombia).
limita_con(brasil,venezuela).
limita_con(brasil,guyana).
limita_con(brasil,suriname).
limita_con(brasil,french_guiana).
limita_con(venezuela,colombia).
limita_con(venezuela,guyana).
limita_con(guyana,suriname).
limita_con(suriname,french_guiana).
limita_con(ecuador,colombia).
limita_con(peru,ecuador).
limita_con(peru,colombia).
limita_con(peru,bolivia).
limita_con(peru,chile).
limita_con(bolivia,paraguay).
limita_con(bolivia,chile).
limita_con(bolivia,argentina).
limita_con(chile,argentina).
limita_con(argentina,paraguay).
limita_con(argentina,uruguay).

%Superficie por pais.
superficie_pais(brasil, 8547404).
superficie_pais(uruguay,176000).

%Convertir un grafo dirigido (limita_con) en un no dirigido (limitrofe).
limitrofes(X,Y):- limita_con(X,Y); % OR
                  limita_con(Y,X).

pais_pequeño(X) :- superficie_pais(X,Y),
			    Y < 1000000.

% Definir la siguiente regla:
% obtener todos los pares de países translimitrofes,
% definimos que dos paises X e Y son translimitrofes si X
% limita con un pais Z y Z limita con Y pero X e Y no son limitrofes
% Ejemplo: brasil y chile son translimitrofes.

translimitrofes(X,Y):- limitrofes(X,Z),
	               limitrofes(Y,Z),
		       dif(X,Y),
		       not(limitrofes(X,Y)).



