% Caso base: Si la lista esta vacia, falla
existe(X, []) :- fail.

% Caso donde el elemento es igual al primer elemento de la lista
existe(X, [Y|Ys]) :- X == Y, true.

% Caso donde el elemento no es igual al primer elemento de la lista
existe(X, [Y|Ys]) :- X \== Y, existe(X, Ys).

% Consultas
% existe(3, [1, 2, 3, 4]).
% existe(a, [b, c, d]).
% existe(5, [])
% existe(x, [x, y, z]).
% existe(10, [10, 20, 30, 40]).
% existe(z, [a, b, c, d, e, f, z]).
% existe(100, [1, 2, 3, 4, 5]).