hombre(juan,media,castaño,joven).
hombre(jose,baja,rubio,adulta).
hombre(carlitos,media,negro,vieja).
hombre(martin,alta,pelirrojo,adulta).

mujer(analia,alta,rubio,joven).
mujer(natalia,media,castaño,adulta).
mujer(florencia,baja,pelirrojo,adulta).
mujer(romina,media,rubio,joven).

gusta(juan,pop,ciencia-ficcion,tenis).
gusta(jose,pop,policiaca,jogging).
gusta(carlitos,clasica,aventura,natacion).
gusta(martin,jazz,aventura,jogging).
gusta(analia,pop,ciencia-ficcion,tenis).
gusta(natalia,clasica,ciencia-ficcion,natacion).
gusta(florencia,pop,policiaca,jogging).
gusta(romina,jazz,aventura,jogging).

busca(juan,alta,rubio,joven).
busca(jose,baja,pelirrojo,adulta).
busca(martin,media,rubio,joven).
busca(romina,alta,pelirrojo,adulta).
busca(analia,media,negro,vieja).
busca(florencia,baja,rubio,adulta).

%funciones

adecuadas(X,Y) :- busca(X,AH,CH,EH), hombre(X,_,_,_), gusta(X,MH,LH,SH), mujer(Y,AH,CH,EH), gusta(Y,MH,LH,SH), busca(Y,AM,CM,EM), hombre(X,AM,CM,EM);
	       busca(X,AM,CM,EM), mujer(X,_,_,_), gusta(X,MM,LM,SM), hombre(Y,AM,CM,EM),gusta(Y,MM,LM,SM), busca(Y,AH,CH,EH), mujer(Y,AH,CH,EH).

