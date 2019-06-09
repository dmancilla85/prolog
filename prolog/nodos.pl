nodo(a).
nodo(b).
nodo(c).
nodo(d).
nodo(e).
nodo(f).
nodo(g).
nodo(h).
nodo(i).
nodo(j).

va_hacia(a,f).
va_hacia(a,d).
va_hacia(a,c).
%va_hacia(a,e).
va_hacia(b,a).
va_hacia(b,d).
va_hacia(b,e).
%va_hacia(b,h).
va_hacia(c,h).
va_hacia(c,b).
va_hacia(c,i).
va_hacia(d,g).
va_hacia(d,j).
va_hacia(d,i).
va_hacia(e,c).
va_hacia(e,g).
va_hacia(e,f).
va_hacia(f,d).
va_hacia(f,g).
va_hacia(f,c).
va_hacia(g,b).
va_hacia(g,h).
va_hacia(g,j).
%va_hacia(g,a).
%va_hacia(g,c).
va_hacia(h,e).
va_hacia(h,b).
va_hacia(h,j).
va_hacia(i,g).
va_hacia(i,f).
va_hacia(i,a).
va_hacia(j,i).
va_hacia(j,b).
va_hacia(j,e).

llega_a(X,Y) :- nodo(X),
		nodo(Y),
		va_hacia(X,Y).

llega_a(X,Y) :- va_hacia(X,Z), llega_a(z,X).






