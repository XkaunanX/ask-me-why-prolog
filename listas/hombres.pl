% Hechos que definen quién es hombre
hombre(juan).
hombre(pedro).
hombre(carlos).
hombre(diego).

% Caso base: La lista vacía se considera como que todos son hombres
hombres([]).

% Caso recursivo: Verifica si el primer elemento es hombre y continúa con el resto de la lista
hombres([X|Xs]) :- hombre(X), hombres(Xs).

% Consultas
% hombres([]).
% hombres([juan, pedro, carlos]).
% hombres([juan, pedro, ana]).
% hombres([carlos, diego, juan]).