% Base de conocimiento

% Base de conocimientos
persona(juan, 25).
persona(maria, 30).
persona(pedro, 20).
persona(luisa, 35).
persona(ana, 28).

% ?- persona(Nombre, Edad), Edad = 25.          unificable

% ?- persona(Nombre, Edad), Edad \= 30.         no unificable

% ?- persona(juan, Edad), Edad == 25.           exactamente igual

% ?- persona(Nombre, Edad), Nombre \== juan.    exactamente no igual

% ?- persona(Nombre, Edad), Edad >= 20, Edad =< 30.

% ?- persona(Nombre, Edad), Edad >= 30.