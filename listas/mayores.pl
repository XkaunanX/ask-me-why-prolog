% Caso base: La lista vacía tiene 0 elementos mayores que 5
cantMay5([], 0).

% Caso recursivo: Si el primer elemento es mayor que 5, cuenta 1 y sigue con el resto
cantMay5([X|Xs], S) :- X > 5, cantMay5(Xs, S1), S is S1 + 1.

% Caso recursivo: Si el primer elemento es menor que 5, no cuenta y sigue con el resto
cantMay5([X|Xs], S) :- X < 5, cantMay5(Xs, S1), S is S1.

% Caso recursivo: Si el primer elemento es igual a 5, no cuenta y sigue con el resto
cantMay5([X|Xs], S) :- X == 5, cantMay5(Xs, S1), S is S1.

% Consultas
% cantMay5([], S).
% cantMay5([1, 2, 3, 4], S).
% cantMay5([2, 5, 6, 8, 3], S).
% cantMay5([6, 7, 8, 9], S).
% cantMay5([5, 5, 5], S).
% cantMay5([4, 5, 6, 7, 2, 8], S).