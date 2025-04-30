del(X, [], []).  % Caso base: si la lista es vacía, el resultado es también vacío.
del(X, [Y|Ys], Ys) :- X == Y.  % Si el primer elemento es igual a X, se elimina.
del(X, [Y|Ys], [Y|Zs]) :- X \== Y, del(X, Ys, Zs).  % Si el primer elemento no es X, se mantiene.

% Consultas
% del(3, [1, 2, 3, 4], R). 
% del(5, [1, 2, 3, 4], R).  
% del(a, ['a', 'b', 'c'], R). 
% del(x, ['y', 'x', 'z'], R).