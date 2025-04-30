% Caso base: La lista vacia no muestra nada
mostrar([]).

% Caso recursivo: Escribe el primer elemento, pasa a la siguiente linea y muestra el resto
mostrar([X|Xs]) :- write(X), nl, mostrar(Xs).

% Consultas
% mostrar([]).
% mostrar([1, 2, 3, 4, 5]).
% mostrar(['Hola', 'Mundo', 'Prolog']).