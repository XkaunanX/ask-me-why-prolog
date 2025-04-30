% Definir algunos hechos
padre(juan, maria).
padre(juan, pedro).
madre(ana, maria).
madre(ana, pedro).

% Definir algunas reglas
hermano(X, Y) :- padre(P, X), padre(P, Y), madre(M, X), madre(M, Y), X \= Y.
hijo(X, P) :- padre(P, X).
hija(X, M) :- madre(M, X).
abuelo(A, N) :- padre(A, P), padre(P, N).

% Consultas de ejemplo
% hermano(maria, pedro). % Responde si son hermanos
% hijo(pedro, juan).    % Verifica si Pedro es hijo de Juan
% abuelo(juan, N).      % Busca los nietos de Juan