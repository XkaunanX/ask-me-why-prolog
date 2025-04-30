% Caso base: Una lista vacía se considera como que todos los elementos son iguales
todosIg([]).

% Caso base: Una lista con un solo elemento también se considera igual
todosIg([_]). 

% Caso recursivo: Si el primer y segundo elemento son iguales, verifica el resto de la lista
todosIg([X,Y|Xs]) :- X == Y, todosIg([Y|Xs]).

% Alternativa: Si los elementos son diferentes, falla
todosIg([X,Y|_]) :- X \== Y, false.

% Consultas
% todosIg([]).
% todosIg([5]).
% todosIg([3, 3, 3, 3]).
% todosIg([1, 2, 1]).
% todosIg([4, 4, 4, 5]).