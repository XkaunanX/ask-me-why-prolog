% Regla para verificar si un numero es par
par(X) :- integer(X), 0 is X mod 2.

% Regla para verificar si un numero es impar
impar(X) :- integer(X), 1 is X mod 2.

% Caso base: La cantidad de pares en una lista vacia es 0
cantP([], 0).

% Caso recursivo: Si el primer elemento es par, se incrementa el contador
cantP([X|Xs], S) :- par(X), cantP(Xs, S1), S is S1 + 1.

% Caso recursivo: Si el primer elemento es impar, el contador no cambia
cantP([X|Xs], S) :- impar(X), cantP(Xs, S1), S is S1.

% Consulta
% cantP([], S).
% cantP([1, 2, 3, 4, 5, 6], S).
% cantP([7, 8, 9, 10, 12, 13], S).