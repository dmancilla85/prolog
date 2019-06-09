hombre(pedro).
hombre(manuel).
hombre(arturo).

mujer(maria).

padre(pedro, manuel).
padre(pedro, arturo).
padre(pedro, maria).

hijo(X,Y) :- padre(Y,X) , hombre(X).
hija(X,Y) :- padre(Y,X) , mujer(X).
niño(X,Y) :- padre(Y,X).

hermano-o-hermana(X,Y) :- padre(Z,X) , padre(Z,Y),
	                  dif(X,Y).

hermano(X,Y) :- hermano-o-hermana(X,Y) ,
	        hombre(X).

hermana(X,Y) :- hermano-o-hermana(X,Y) ,
	        mujer(X).

