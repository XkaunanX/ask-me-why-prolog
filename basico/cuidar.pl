% Hechos

% Personas que no trabajan
notrabaja(belen).
notrabaja(raquel).
notrabaja(julia).
notrabaja(fatima).
notrabaja(diana).
notrabaja(maria).

% Personas consideradas buenas
bueno(pedro).
bueno(juan).
bueno(andres).
bueno(carlos).
bueno(fernando).
bueno(roberto).

% Reglas simples

% Reglas que indican quien cuida a quien, con base en las condiciones de trabajo y bondad
cuida(raquel, juan) :- notrabaja(raquel), bueno(juan).
cuida(julia, andres) :- notrabaja(julia), bueno(andres).
cuida(fatima, carlos) :- notrabaja(fatima), bueno(carlos).
cuida(diana, fernando) :- notrabaja(diana), bueno(fernando).
cuida(maria, roberto) :- notrabaja(maria), bueno(roberto).

% Reglas adicionales que indican quien ayuda a quien, basadas en la bondad de la persona
ayuda(pedro, juan) :- bueno(pedro), bueno(juan).
ayuda(andres, carlos) :- bueno(andres), bueno(carlos).
ayuda(carlos, fernando) :- bueno(carlos), bueno(fernando).
ayuda(juan, roberto) :- bueno(juan), bueno(roberto).
ayuda(roberto, andres) :- bueno(roberto), bueno(andres).

% Reglas que indican quien consuela a quien si la persona no trabaja y es buena
consuela(belen, raquel) :- notrabaja(belen), bueno(raquel).
consuela(julia, fatima) :- notrabaja(julia), bueno(fatima).
consuela(diana, maria) :- notrabaja(diana), bueno(maria).
consuela(raquel, julia) :- notrabaja(raquel), bueno(julia).
consuela(fatima, diana) :- notrabaja(fatima), bueno(diana).

% Consultas
% cuida(Persona, pedro).
% cuida(raquel, Quien).
% cuida(Persona, Quien).
% ayuda(Quien, carlos).
% cuida(juan, _).
% consuela(Persona, Alguien).
% ayuda(_, roberto).
% notrabaja(Persona).