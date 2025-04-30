% Caso base: La suma de una lista vacia es 0
sum([], 0).

% Caso recursivo: Suma de una lista no vacia
sum([X|Xs], S) :-sum(Xs, S1),S is S1 + X.

% Consultas
% sum([], S).
% sum([1, 2, 3, 4], S).
% sum([5, 10, 15], S).