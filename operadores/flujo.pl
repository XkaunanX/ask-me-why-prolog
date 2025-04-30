% Base de conocimientos
persona(juan, 25, madrid).
persona(maria, 30, barcelona).
persona(pedro, 20, madrid).
persona(luisa, 35, sevilla).
persona(ana, 28, barcelona).

ciudadGrande(madrid).
ciudadGrande(barcelona).

% ?- persona(Nombre, Edad, Ciudad), Edad > 25, ciudadGrande(Ciudad).

% ?- persona(Nombre, Edad, _), Edad < 25 ; Edad > 30.

% ?- persona(Nombre, _, madrid), \+ (Nombre = juan).

% ?- persona(Nombre, Edad, Ciudad), (Edad > 30 -> Ciudad = sevilla).

% ?- persona(Nombre, Edad, Ciudad), (Edad < 25 -> Ciudad = madrid ; Ciudad = barcelona).

% ?- persona(Nombre, Edad, Ciudad), (Edad > 30 -> \+ (Ciudad = madrid) ; Ciudad = barcelona).