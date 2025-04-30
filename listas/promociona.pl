% Hechos
nota(juan, 8).
nota(pedro, 6).
nota(maria, 7).
nota(luis, 5).
asistencia(juan).
asistencia(pedro).
asistencia(maria).
asistencia(luis).

% Reglas

promociona(X) :- nota(X, Z), (Z > 7 ; Z = 7), asistencia(X).

listaPromo([], []).  % Caso base: lista vacia

listaPromo([X|Xs], [X|Ys]) :- promociona(X), listaPromo(Xs, Ys).

listaPromo([X|Xs], L) :- not(promociona(X)), listaPromo(Xs, L).

listaAprob([]).  % Caso base: lista vacia

listaAprob([X|Xs]) :- nota(X, Z), (Z > 6 ; Z = 6),write(X), nl, listaAprob(Xs).

listaAprob([X|Xs]) :- nota(X, Z), Z < 6, listaAprob(Xs).

% Consultas
% promociona(juan).
% listaPromo([juan, pedro, maria, luis, ana, fernando], ListaPromovidos).
% listaAprob([juan, pedro, maria, luis, ana, fernando]).
% findall(X, promociona(X), ListaPromovidos), length(ListaPromovidos, Cantidad).
% asistencia(maria).
% promociona(pedro).
% (promociona(X) -> write(X), nl; true), fail.
% listaPromo([juan, pedro, maria, luis, ana, fernando], _),(promociona(X) -> write(X), nl; true).
% findall(_, promociona(_), ListaPromovidos), length(ListaPromovidos, Cantidad), write(Cantidad).