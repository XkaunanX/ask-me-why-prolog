% Hechos y reglas para operaciones aritmeticas

% Suma de dos numeros
suma(X, Y, Z) :- 
    number(X), 
    number(Y), 
    Z is X + Y.

% Resta de dos numeros
resta(X, Y, Z) :- 
    number(X), 
    number(Y), 
    Z is X - Y.

% Multiplicacicon de dos numeros
multiplicacion(X, Y, Z) :- 
    number(X), 
    number(Y), 
    Z is X * Y.

% Division de dos numeros (si Y no es cero)
division(X, Y, Z) :- 
    number(X), 
    number(Y), 
    Y \= 0, 
    Z is X / Y.

% Potencia de un numero (X elevado a Y)
potencia(X, Y, Z) :- 
    number(X), 
    number(Y), 
    Z is X ** Y.

% Modulo (resto de la division de X entre Y)
modulo(X, Y, Z) :- 
    number(X), 
    number(Y), 
    Y \= 0, 
    Z is X mod Y.

% Raiz cuadrada de un numero
raiz(X, Z) :- 
    number(X), 
    X >= 0, 
    Z is sqrt(X).

% Comparaciones

% Mayor que
mayor_que(X, Y) :- 
    number(X), 
    number(Y), 
    X > Y.

% Menor que
menor_que(X, Y) :- 
    number(X), 
    number(Y), 
    X < Y.

% Igualdad
igual_a(X, Y) :- 
    number(X), 
    number(Y), 
    X =:= Y.

% Regla para verificar si un numero es par
par(X) :- 
    integer(X),  % Verifica que X sea un numero entero
    0 is X mod 2.

% Regla para verificar si un numero es impar
impar(X) :- 
    integer(X),  % Verifica que X sea un numero entero
    1 is X mod 2.

% Regla para verificar quien es mayor a quien
mayor(X, Y, Z) :- (X > Y -> Z is X; Z is Y).

% Regla para verificar si es positivo
posit(X) :- X > 0.

% Ejemplos de consultas

% Consultas de prueba:
% suma(7, 5, Z).
% suma(0, 10, Z).
% resta(15, 6, Z).
% resta(8, 12, Z).
% multiplicacion(9, 4, Z).
% multiplicacion(0, 5, Z).
% division(20, 5, Z).
% division(15, 3, Z).
% potencia(3, 3, Z).
% potencia(5, 2, Z).
% modulo(15, 4, Z).
% modulo(12, 7, Z).
% raiz(25, Z).
% raiz(9, Z).
% mayor_que(12, 7).
% mayor_que(5, 10).
% menor_que(2, 8).
% menor_que(20, 5).
% igual_a(6, 6).
% igual_a(9, 3).
% par(10).
% par(7).
% impar(11).
% impar(4).
% mayor(14, 18, Z).
% mayor(25, 12, Z).
% posit(3).
% posit(-2).