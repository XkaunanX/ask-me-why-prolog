unPosit([]) :- false.  % Caso base: la lista vacía no tiene elementos positivos.
unPosit([X|_]) :- X > 0.  % Si el primer elemento es positivo, se cumple.
unPosit([X|Xs]) :- (X =< 0), unPosit(Xs).  % Si no, se verifica el resto de la lista.

% Consultas
% unPosit([]). 
% unPosit([-1, -2, -3]).
% unPosit([0, -5, 3]).
% unPosit([1, -2, -3]).
% unPosit([2, 0, -1, 5]).