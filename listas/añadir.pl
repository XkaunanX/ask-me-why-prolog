add(X, [], [X]).  % Caso base: agregar a una lista vacía
add(X, L, [X|L]).  % Agregar X al inicio de la lista L

% Consultas
% add(5, [], R). 
% add(a, [b, c], R). 
% add(10, [1, 2, 3], R).