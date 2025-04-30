% Definir una función que suma los elementos de una lista
suma([], 0).
suma([Cabeza|Cola], Resultado) :-
    suma(Cola, Resto),
    Resultado is Cabeza + Resto.

% Ejemplo de uso:
?- suma([1, 2, 3], Resultado).
Resultado = 6.
