% Hechos 
hombre(juan).
hombre(pedro).
hombre(carlos).
hombre(diego).

% Caso base
hombres([], 0).

% Caso recursivo
hombres([X|Xs], Cont) :- hombre(X), hombres(Xs, C), Cont is C + 1.

% Caso recursivo
hombres([X|Xs], Cont) :- \+ hombre(X), hombres(Xs, C), Cont is C.

% Consultas
% hombres([], Cont).
% hombres([juan, pedro], Cont).
% hombres([juan, ana, pedro], Cont).
% hombres([ana, lucia, maria], Cont).
% hombres([juan, lucia, carlos, diego], Cont).