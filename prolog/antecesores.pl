hombre(carlos).
hombre(juan).
hombre(miguel).
hombre(daniel).
hombre(abel).
hombre(ezequiel).
hombre(matias).
mujer(daniela).
mujer(casandra).
mujer(elena).
mujer(lucia).
mujer(teresa).
mujer(chantal).

% Bisabuelos Carlos y Elena
padre(carlos, juan).
padre(carlos, miguel).
padre(carlos, daniel).
% Abuelos Juan y Lucia
padre(juan, abel).
padre(juan, ezequiel).
% Padres Ezequiel y teresa
padre(ezequiel, casandra).
padre(ezequiel, chantal).
padre(ezequiel, matias).

esposa(elena, carlos).
esposa(lucia, juan).
esposa(teresa, ezequiel).

hijo(X,Y) :- padre(Y,X) , hombre(X).
hija(X,Y) :- padre(Y,X) , mujer(X).
niño(X,Y) :- padre(Y,X).

hermano-o-hermana(X,Y) :- padre(Z,X) , padre(Z,Y),
	                  dif(X,Y).

hermano(X,Y) :- hermano-o-hermana(X,Y) ,
	        hombre(X).

hermana(X,Y) :- hermano-o-hermana(X,Y) ,
	        mujer(X).

antecesor_de(X,Y) :- padre(Y,X);
		     (padre(Z,X) , padre(Y,Z)).
