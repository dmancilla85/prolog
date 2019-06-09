% Destinos del catálogo
destino(roma, 1800).
destino(londres, 1680).
destino(tunez, 2470).

% Comodidades disponibles para la estadia
comodidad(hotel).
comodidad(hostal).
comodidad(camping).

% Costo de estadía según el destino
estancia(roma, hotel, 230).
estancia(roma, hostal, 110).
estancia(roma, camping, 80).
estancia(tunez, hotel, 190).
estancia(tunez, hostal, 100).
estancia(tunez, camping, 40).
estancia(roma, hotel, 190).
estancia(londres,hostal,150).
estancia(londres,camping,90).


% Costo por viaje más estadía
viaje(C,S,H,P) :- destino(C,X),
	          estancia(C,H,Y),
		  P is X+S*Y.

% El costo del viaje es menor que PMAX?
viaje_economico(C,S,H,P,PMAX) :- viaje(C,S,H,P) ,
	                          P<PMAX.

% Operaciones algebraicas
producto(P,X,Y) :- P is X*Y. % P = X * Y
sumar(S,X,Y) :- S is X+Y. % S = S + Y
menor(X,Y) :- X<Y. % X es menor que Y






