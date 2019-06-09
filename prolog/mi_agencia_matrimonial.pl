
% Altura de los candidatos
altura(alta).
altura(baja).
altura(media).

% Tipos de cabellos
cabello(rubio).
cabello(castaño).
cabello(pelirrojo).
cabello(negro).

% Tipos de edades
edad(joven).
edad(adulta).
edad(vieja).

% Géneros de música favoritos
musica(clasica).
musica(pop).
musica(jazz).

% Géneros de literatura favoritos
literatura(aventura).
literatura(ciencia-ficcion).
literatura(policial).

% Deportes que practican
deporte(tenis).
deporte(natacion).
deporte(jogging).

% Candidatos ( X mide Y, es de cabello Z y de edad W y es hombre)
hombre(juan, alta, castaño, adulta).
hombre(carlos, media, negro, joven).
hombre(miguel, baja, rubio, joven).
hombre(dario, alta, pelirrojo, vieja).
hombre(luis, media, castaño, adulta).

% Candidatas ( X mide Y, es de cabello Z y de edad W y es mujer)
mujer(ana, alta, rubio,	adulta).
mujer(casandra, media, pelirroja, adulta).
mujer(anabel, media, negro, vieja).
mujer(mariana, alta, negro, joven).
mujer(isabel, baja, castaño, adulta).

% Preferencias de los candidatos (a X le gusta Y, Z y W).
gusta(juan, pop, aventura, tenis).
gusta(carlos, jazz, policial, natacion).
gusta(miguel, clasica, ciencia-ficcion, jogging).
gusta(dario, jazz, policial, natacion).
gusta(luis, pop, aventura, natacion).
gusta(ana, jazz, policial, natacion).
gusta(casandra, clasica, ciencia-ficcion, jogging).
gusta(anabel, jazz, policial, jogging).
gusta(mariana, pop, aventura, tenis).
gusta(isabel, clasica, ciencia-ficcion, natacion).

busca(juan, alta, negro, joven).
busca(carlos, alta, negro, joven).
busca(miguel, alta, negro, adulto).
busca(dario, media, rubio, vieja).
busca(luis, baja, pelirrojo, adulto).
busca(ana, media, negro, joven).
busca(casandra, alta, castaño, adulto).
busca(anabel, baja, pelirrojo, vieja).
busca(mariana, alta, castaño, joven).
busca(isabel, alta, rubio, joven).

% Se podría describir asi: (hombre X mujer) U (mujer X hombre)
sexo_diferente(X,Y) :- hombre(X,_,_,_), mujer(Y,_,_,_);
		       hombre(Y,_,_,_), mujer(X,_,_,_).


conviene_fisicamente_a(X,Y) :- sexo_diferente(X,Y),
		   (hombre(X,A,C,E) ; mujer(X,A,C,E)),
	           busca(Y,A,C,E).

conviene_a(X,Y) :- conviene_fisicamente_a(X,Y),
	           gusta(X,Musica,Literatura,Deporte),
                   gusta(Y,Musica,Literatura,Deporte).
