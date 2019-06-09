entrada(paella).
entrada(gazpacho).
entrada(consome).

carne(filete_de_cerdo).
carne(pollo_asado).

pescado(trucha).
pescado(bacalao).

postre(flan).
postre(helado).
postre(pastel).

%funciones

comida(X,Y,Z) :- entrada(X), carne(Y),postre(Z);
                 entrada(X), pescado(Y), postre(Z).
