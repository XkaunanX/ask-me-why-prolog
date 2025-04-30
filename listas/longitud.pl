% Regla para la longitud de una lista vacia
long([], C) :- C is 0.

% Regla para la longitud de una lista no vacia
long( [_|Xs], C ) :- long(Xs, C1), C is C1 + 1.

% Consultas
% long([], C).
% long([a, b, c, d], C).
% long([1, 2, 3, 4, 5], C).