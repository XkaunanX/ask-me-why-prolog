% Caso base: Un elemento X no esta en una lista vacia
noesta(X, []).

% Caso recursivo: X no esta en la lista si no es igual al primer elemento Y 
% y no esta en el resto de la lista Ys
noesta(X, [Y|Ys]) :- X \== Y, noesta(X, Ys).

% Caso recursivo: Si X es igual a Y, entonces falla (es decir, X esta en la lista)
noesta(X, [Y|Ys]) :- X == Y, false.

% Consultas
% noesta(3, []).
% noesta(3, [1, 2, 4, 5]).
% noesta(3, [1, 2, 3, 4, 5]).
% noesta(6, [1, 2, 3, 4, 5]).
% noesta(2, [1, 2, 3, 4, 5]).