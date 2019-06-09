destino(roma).
destino(londres).
destino(tunez).

precio_transporte(roma,2000).
precio_transporte(londres,2500).
precio_transporte(tunez,2300).

semana(1).
semana(2).

nivel_comodidad(hotel,500).
nivel_comodidad(hostal,300).
nivel_comodidad(camping,200).

multiplicar(P,X,Y) :- P is X*Y.
sumar(S,X,Y) :- S is X+Y.
menor(X,Y) :- X<Y.

viaje(C,S,H,P) :- destino(C), semana(S), nivel_comodidad(H,Y), precio_transporte(C,X), sumar(Z,X,Y), multiplicar(P,S,Z).

viaje_economico(C,S,H,P,MAX) :- destino(C), semana(S), precio_transporte(C,X), nivel_comodidad(H,Y), sumar(Z,X,Y), multiplicar(P,S,Z), menor(P,MAX).
